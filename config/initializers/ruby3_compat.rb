# Fix for Rails 5.2 compatibility with Ruby 3.x
#
# Ruby 3.0 removed automatic conversion of a trailing Hash into keyword
# arguments. Several Rails 5.2 internals rely on that old behavior.

# ── 1. Middleware stack builder ──────────────────────────────────────────────
# Rails builds its middleware stack by calling klass.new(app, *args) where
# args may end with a Hash meant to be kwargs. Patching the builder once
# fixes all middlewares (ActionDispatch::Static, SSL, etc.) in one shot.

module MiddlewareStackRuby3Fix
  def build(app)
    if args.last.is_a?(Hash)
      klass.new(app, *args[0..-2], **args.last, &block)
    else
      klass.new(app, *args, &block)
    end
  end
end

ActionDispatch::MiddlewareStack::Middleware.prepend(MiddlewareStackRuby3Fix)

# ── 2. ActiveRecord type registry (PostgreSQL adapter) ───────────────────────
# postgresql_adapter.rb calls:
#   ActiveRecord::Type.add_modifier({ array: true }, OID::Array, adapter: :postgresql)
# In Ruby 2.x the trailing hash was auto-converted to kwargs; not in Ruby 3.x.
# active_record is already loaded by this point so we can prepend directly
# without requiring the file (which would trigger a circular dependency).

module AdapterSpecificRegistryRuby3Fix
  def add_modifier(options, klass, deprecated_args = nil, **args)
    args = deprecated_args.merge(args) if deprecated_args.is_a?(Hash)
    super(options, klass, **args)
  end
end

ActiveRecord::Type::AdapterSpecificRegistry.prepend(AdapterSpecificRegistryRuby3Fix)

# ── 3. ActiveModel::Type::Value (PostgreSQL type map) ────────────────────────
# Rails 5.2's PostgreSQL adapter sometimes passes type options as a plain Hash
# positional argument (e.g. Integer.new({limit: 2})). In Ruby 2.x that hash
# was silently converted to keyword args; in Ruby 3.x it is NOT, causing:
#   ArgumentError: wrong number of arguments (given 1, expected 0)
# Patching Value#initialize to detect and splat such a hash fixes the whole
# type hierarchy (Integer, Float, Decimal, String, etc.) in one place.

module ActiveModelTypeValueRuby3Fix
  def initialize(*args, **kwargs)
    if args.length == 1 && args.first.is_a?(Hash) && kwargs.empty?
      super(**args.first)
    elsif args.empty?
      super(**kwargs)
    else
      super(*args, **kwargs)
    end
  end
end

ActiveModel::Type::Value.prepend(ActiveModelTypeValueRuby3Fix)

# ── 4. PostgreSQL create_table_definition ────────────────────────────────────
# The PostgreSQL adapter defines:
#   def create_table_definition(*args)
#     PostgreSQL::TableDefinition.new(native_database_types, *args)
#   end
# In Ruby 2.x a trailing `comment: nil` keyword would be captured inside *args
# as a plain Hash and then auto-converted back to kwargs when passed to
# TableDefinition#initialize. Ruby 3 no longer does that auto-conversion, so
# the kwarg is either silently dropped or passed as an extra positional arg,
# producing "wrong number of arguments (given 5, expected 1..4)".
# Fix: use *args, **kwargs so keyword args flow separately all the way through.

module PostgreSQLCreateTableDefinitionFix
  # The original PostgreSQL create_table_definition is:
  #   def create_table_definition(*args)
  #     PostgreSQL::TableDefinition.new(*args)
  #   end
  # In Ruby 2, create_table passes 5 positional args (name, temporary, options,
  # as, comment) and *args captures them all. In Ruby 3, *args still captures
  # all 5 positional args — but that causes "given 5, expected 1..4" at
  # TableDefinition#initialize because abstract only accepts 4 positional args.
  # Fix: explicitly declare the signature and only forward what initialize accepts.
  # NOTE: Rails 5.2 TableDefinition does NOT take `types` as first arg.
  def create_table_definition(name, temporary = false, options = nil, as = nil, comment = nil)
    # TableDefinition#initialize in Rails 5.2:
    #   def initialize(name, temporary = false, options = nil, as = nil, comment: nil)
    # `as` is positional, `comment` is a keyword. The earlier version of this
    # patch dropped `as` and put `comment` into its slot — producing SQL like
    #   CREATE TABLE ... AS {:comment=>nil}
    # Pass `as` positionally and `comment` as a kwarg.
    ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition.new(
      name, temporary, options, as, comment: comment
    )
  end
end

# Force-load the adapter so the constant exists when we try to patch it.
# A plain `require` only loads Ruby code — it does NOT open a DB connection.
begin
  require 'active_record/connection_adapters/postgresql_adapter'
rescue LoadError
  # Not using PostgreSQL — skip.
end

if defined?(ActiveRecord::ConnectionAdapters::PostgreSQLAdapter)
  ActiveRecord::ConnectionAdapters::PostgreSQLAdapter.prepend(PostgreSQLCreateTableDefinitionFix)
end

# ── 5. TableDefinition#new_column_definition ─────────────────────────────────
# `column` calls `new_column_definition(name, type, options_hash)` passing the
# options as a plain Hash positional argument. In Ruby 3, new_column_definition
# declares `**options` (keyword args), so receiving a Hash positional produces:
#   ArgumentError: wrong number of arguments (given 3, expected 2)
# Fix: intercept at new_column_definition and splat the hash into kwargs.

module NewColumnDefinitionRuby3Fix
  def new_column_definition(name, type, *args, **options)
    if args.length == 1 && args.first.is_a?(Hash)
      super(name, type, **args.first)
    else
      super(name, type, **options)
    end
  end
end

ActiveRecord::ConnectionAdapters::TableDefinition.prepend(NewColumnDefinitionRuby3Fix)

# ── 6. AbstractAdapter#add_index_options ─────────────────────────────────────
# `add_index` calls:
#   add_index_options(table_name, column_name, options_hash)
# but add_index_options declares `(table_name, column_name, comment: nil, **options)`.
# In Ruby 3 the plain Hash doesn't auto-convert to kwargs, causing:
#   ArgumentError: wrong number of arguments (given 3, expected 2)

module AddIndexOptionsRuby3Fix
  def add_index_options(table_name, column_name, *args, **options)
    if args.length == 1 && args.first.is_a?(Hash)
      super(table_name, column_name, **args.first)
    else
      super(table_name, column_name, **options)
    end
  end
end

ActiveRecord::ConnectionAdapters::AbstractAdapter.prepend(AddIndexOptionsRuby3Fix)

# ── 7. SchemaCreation#type_to_sql ────────────────────────────────────────────
# schema_creation.rb calls:
#   @conn.type_to_sql(type, options)   # options is a plain Hash
# but the PostgreSQL adapter declares:
#   def type_to_sql(type, limit: nil, precision: nil, scale: nil, array: nil, **)
# Ruby 3: Hash positional ≠ kwargs → "wrong number of arguments (given 2, expected 1)"
# Fix: patch SchemaCreation#type_to_sql to splat the options hash.

module SchemaCreationTypeToSqlRuby3Fix
  def type_to_sql(type, options = {})
    @conn.type_to_sql(type, **options)
  end
end

ActiveRecord::ConnectionAdapters::AbstractAdapter::SchemaCreation.prepend(SchemaCreationTypeToSqlRuby3Fix)

# ── 8. AbstractAdapter#transaction ───────────────────────────────────────────
# ActiveRecord::Transactions::ClassMethods#transaction calls:
#   connection.transaction(options_hash, &block)
# but AbstractAdapter#transaction declares only keyword args:
#   def transaction(requires_new: nil, isolation: nil, joinable: true)
# In Ruby 3 the plain Hash positional arg causes:
#   ArgumentError: wrong number of arguments (given 1, expected 0)
# This surfaces at the end of db:migrate in the record_environment step.
# Fix: accept an optional positional hash and merge it into kwargs.

# Fix at the CALLER side: ActiveRecord::Transactions::ClassMethods#transaction
# calls connection.transaction(options_hash, &block) — options is a plain Hash.
# By splatting it here, the adapter's transaction() receives proper kwargs
# regardless of its exact keyword signature.

module ActiveRecordClassTransactionRuby3Fix
  def transaction(options = {}, &block)
    connection.transaction(**options, &block)
  end
end

ActiveRecord::Base.singleton_class.prepend(ActiveRecordClassTransactionRuby3Fix)

# ── 9. Transaction base-class #initialize ────────────────────────────────────
# begin_transaction eventually reaches:
#   Transaction#initialize(connection, options, run_commit_callbacks: false)
# where `run_commit_callbacks` is a KEYWORD argument. The subclasses
# (RealTransaction, SavepointTransaction) were written in Rails 5.2 under the
# assumption that Ruby 2 would auto-convert a trailing Hash to kwargs when
# `super` forwards its args. In Ruby 3 that conversion is gone:
#   RealTransaction#initialize(connection, options, run_commit_callbacks = false)
#     -> calls implicit `super` which forwards all 3 positional args
#     -> base Transaction#initialize receives 3 positional args
#     -> ArgumentError: wrong number of arguments (given 3, expected 2)
#
# Patching at the subclass level does not work: no matter how we call super
# from a prepended module, the original subclass `initialize` is still in the
# chain and its implicit `super` re-forwards positionally, re-triggering the
# error at the base.
#
# Fix: patch the BASE class itself to tolerate a 3rd positional argument and
# convert it back to the `run_commit_callbacks:` keyword. This normalizes the
# call regardless of whether the subclass forwarded it positionally (Ruby 2
# behavior that 5.2 assumes) or kwarg-wrapped.
module TransactionBaseRuby3Fix
  def initialize(connection, options, *extras)
    if extras.length == 1
      extra = extras.first
      # Ruby 3 sometimes packs an unmatched kwarg into a positional Hash;
      # splat it back out so it lands on the right keyword.
      if extra.is_a?(Hash) && extra.key?(:run_commit_callbacks)
        super(connection, options, **extra)
      else
        super(connection, options, run_commit_callbacks: extra)
      end
    elsif extras.empty?
      super(connection, options)
    else
      # Unexpected shape — pass through untouched and let Ruby raise.
      super(connection, options, *extras)
    end
  end
end

# The base `Transaction` class isn't autoloaded at initializer time, so we
# require the file explicitly. We also reach the class via RealTransaction's
# superclass to be defensive against any class renaming across Rails patches.
require 'active_record/connection_adapters/abstract/transaction'
ActiveRecord::ConnectionAdapters::RealTransaction.superclass
  .prepend(TransactionBaseRuby3Fix)

# ── 10. ActiveRecord::Relation#initialize ────────────────────────────────────
# Rails 5.2 defines:
#   def initialize(klass, table: klass.arel_table,
#                         predicate_builder: klass.predicate_builder,
#                         values: {})
# `klass` is positional, everything else is keyword. But several callers —
# most notably `Relation::ClassSpecificRelation.create(klass, *args)` from
# relation/delegation.rb and `relation_with(values)` from spawn_methods.rb —
# call `Relation.new(klass, values_hash)`, expecting Ruby 2's implicit
# Hash→kwargs conversion. In Ruby 3 this fails with:
#   ArgumentError: wrong number of arguments (given 2, expected 1)
# Surfaces during validations (UniquenessValidator → exists? → except →
# relation_with → Relation.create → Relation.new).
# Fix: intercept #initialize; if the extra positional arg is a Hash, splat it.

module RelationInitializeRuby3Fix
  def initialize(klass, *args, **kwargs)
    if args.length == 1 && args.first.is_a?(Hash) && kwargs.empty?
      super(klass, **args.first)
    else
      super(klass, *args, **kwargs)
    end
  end
end

ActiveRecord::Relation.prepend(RelationInitializeRuby3Fix)

# ── 11. I18n.translate positional options hash ───────────────────────────────
# i18n 1.14+ declares `translate(key = nil, **options)` — kwargs only. Rails
# 5.2 still calls it the old way, e.g. ActiveModel::Name#human does:
#   I18n.translate(defaults.shift, options.merge!(default: defaults, count: 1))
# which is 2 positional args. Under i18n 1.14 + Ruby 3 this raises:
#   ArgumentError: wrong number of arguments (given 2, expected 0..1)
# Triggered in practice by ActiveModel::Errors#generate_message during
# validation error formatting.
# Fix: prepend on I18n's singleton class so a trailing Hash positional is
# splatted into kwargs before forwarding.

module I18nRuby3Fix
  def translate(*args, **kwargs)
    if args.length >= 2 && args.last.is_a?(Hash) && kwargs.empty?
      *positional, opts = args
      super(*positional, **opts)
    else
      super(*args, **kwargs)
    end
  end

  # `t` is a separately-defined alias in I18n; patch both so either form works.
  def t(*args, **kwargs)
    translate(*args, **kwargs)
  end

  # Same pattern for localize / l, which share the positional-hash convention.
  def localize(*args, **kwargs)
    if args.length >= 2 && args.last.is_a?(Hash) && kwargs.empty?
      *positional, opts = args
      super(*positional, **opts)
    else
      super(*args, **kwargs)
    end
  end

  def l(*args, **kwargs)
    localize(*args, **kwargs)
  end
end

I18n.singleton_class.prepend(I18nRuby3Fix)

# ── 12. ColumnMethods helpers (t.string, t.integer, …) ───────────────────────
# Rails 5.2 generates column-type helpers via a metaprogram that produces:
#   def string(*args, **options)
#     args.each { |name| column(name, :string, options) }
#   end
# Rails' own internal code — including SchemaMigration.create_table — calls
# these helpers with a trailing positional Hash:
#   t.string :version, version_options          # version_options is a Hash
# In Ruby 2 the trailing Hash would auto-convert into `**options`. In Ruby 3
# it stays in `args`, and the iterator then creates a column literally named
# "{:primary_key=>true}" — which surfaces on Render as a PG::SyntaxError
# during db:migrate when the schema_migrations table is first built.
# Fix: redefine each generated helper to pop a trailing Hash from args into
# options before iterating.

require 'active_record/connection_adapters/abstract/schema_definitions'
begin
  require 'active_record/connection_adapters/postgresql/schema_definitions'
rescue LoadError
  # Not on PG — no PG-specific types to patch.
end

module ColumnMethodsRuby3Fix
  # Redefines the named type helpers on `mod` so they tolerate a trailing
  # positional Hash (Ruby-2-style options).
  def self.patch!(mod, types)
    types.each do |type|
      next unless mod.instance_methods(false).include?(type)
      mod.module_eval do
        define_method(type) do |*args, **options|
          options = args.pop if args.last.is_a?(Hash) && options.empty?
          args.each { |name| column(name, type, options) }
        end
      end
    end
  end
end

# Abstract adapter: the core SQL types.
ColumnMethodsRuby3Fix.patch!(
  ActiveRecord::ConnectionAdapters::ColumnMethods,
  # NOTE: primary_key is deliberately omitted — it has a different signature
  # (name, type = :primary_key, **options) and is patched separately below.
  %i[bigint binary boolean date datetime decimal float integer
     json numeric string text time timestamp virtual]
)

# PostgreSQL adapter: the expanded set of PG-specific types.
if defined?(ActiveRecord::ConnectionAdapters::PostgreSQL::ColumnMethods)
  ColumnMethodsRuby3Fix.patch!(
    ActiveRecord::ConnectionAdapters::PostgreSQL::ColumnMethods,
    %i[bigserial bit bit_varying box cidr circle citext daterange hstore
       inet int4range int8range interval jsonb line lseg ltree macaddr
       money numrange oid path point polygon serial tsrange tstzrange
       tsvector uuid xml]
  )
end

# ── 13. TableDefinition#primary_key ──────────────────────────────────────────
# abstract/schema_statements.rb#create_table calls:
#   td.primary_key pk, options[:id] || :primary_key, options
# which is 3 positional args. PG's primary_key is declared:
#   def primary_key(name, type = :primary_key, **options)
# Ruby 2 auto-converted the trailing Hash to kwargs. Ruby 3 keeps it
# positional, yielding:
#   ArgumentError: wrong number of arguments (given 3, expected 1..2)
# Hits the first real user migration (CreateProducts etc.). Fix: prepend on
# PG::TableDefinition so the 3rd positional Hash is splatted into kwargs.

module PrimaryKeyRuby3Fix
  def primary_key(name, type = :primary_key, *args, **options)
    if args.length == 1 && args.first.is_a?(Hash) && options.empty?
      super(name, type, **args.first)
    elsif args.empty?
      super(name, type, **options)
    else
      super(name, type, *args, **options)
    end
  end
end

# Force-load the PG schema_definitions file so PG::TableDefinition is defined
# at initializer time. The previous `if defined?(...)` guard silently skipped
# the prepend when the class wasn't yet autoloaded, leaving the patch inert.
require 'active_record/connection_adapters/postgresql/schema_definitions'
ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition
  .prepend(PrimaryKeyRuby3Fix)

# ── 14. AbstractAdapter#quoted_columns_for_index ─────────────────────────────
# Section 6 patches add_index_options to splat the OUTER positional hash from
# add_index. But the original add_index_options body itself contains:
#   quoted_columns_for_index(columns, options)
# which is an internal positional-Hash call to a method declared as:
#   def quoted_columns_for_index(columns, **options)
# Once Section 6 forwards properly to the original, this inner call still
# fails with:
#   ArgumentError: wrong number of arguments (given 2, expected 1)
# Trace:
#   abstract/schema_statements.rb:1215 quoted_columns_for_index
#   abstract/schema_statements.rb:1162 add_index_options
#   ruby3_compat.rb:138               (Section 6 super)
#   postgresql/schema_statements.rb:465 add_index
# Fix: same shape as Section 6 — accept a trailing positional Hash and splat.

module QuotedColumnsForIndexRuby3Fix
  def quoted_columns_for_index(columns, *args, **options)
    if args.length == 1 && args.first.is_a?(Hash) && options.empty?
      super(columns, **args.first)
    elsif args.empty?
      super(columns, **options)
    else
      super(columns, *args, **options)
    end
  end
end

ActiveRecord::ConnectionAdapters::AbstractAdapter
  .prepend(QuotedColumnsForIndexRuby3Fix)

# ── 15. PostgreSQL#add_options_for_index_columns ─────────────────────────────
# Section 14 unblocked the outer quoted_columns_for_index call. Its body then
# reaches the PG-adapter helper:
#   add_options_for_index_columns(quoted_columns, options)
# at postgresql/schema_statements.rb:733, where the method is declared:
#   def add_options_for_index_columns(quoted_columns, **options)
# Same Ruby-3 kwargs trap, same fix shape.
# Trace:
#   postgresql/schema_statements.rb:733  add_options_for_index_columns
#   abstract/schema_statements.rb:1219   quoted_columns_for_index
#   ruby3_compat.rb:411                  (Section 14 super)
#   abstract/schema_statements.rb:1162   add_index_options
#   ruby3_compat.rb:138                  (Section 6 super)
#   postgresql/schema_statements.rb:465  add_index

require 'active_record/connection_adapters/postgresql/schema_statements'

module AddOptionsForIndexColumnsRuby3Fix
  def add_options_for_index_columns(quoted_columns, *args, **options)
    if args.length == 1 && args.first.is_a?(Hash) && options.empty?
      super(quoted_columns, **args.first)
    elsif args.empty?
      super(quoted_columns, **options)
    else
      super(quoted_columns, *args, **options)
    end
  end
end

# add_options_for_index_columns lives in the PG SchemaStatements module
# (mixed into PostgreSQLAdapter). Prepend onto the module so the patch is
# in the method-lookup chain before the original.
ActiveRecord::ConnectionAdapters::PostgreSQL::SchemaStatements
  .prepend(AddOptionsForIndexColumnsRuby3Fix)

# ── 16. PostgreSQL#add_index_opclass ─────────────────────────────────────────
# Section 15 forwarded into the real add_options_for_index_columns. Its body
# at postgresql/schema_statements.rb:734 calls:
#   add_index_opclass(quoted_columns, options)
# but add_index_opclass is declared:
#   def add_index_opclass(quoted_columns, **options)
# Ruby-3 kwargs trap, identical fix shape.
# Trace:
#   postgresql/schema_statements.rb:726 add_index_opclass
#   postgresql/schema_statements.rb:734 add_options_for_index_columns
#   ruby3_compat.rb (Section 15 super)

module AddIndexOpclassRuby3Fix
  def add_index_opclass(quoted_columns, *args, **options)
    if args.length == 1 && args.first.is_a?(Hash) && options.empty?
      super(quoted_columns, **args.first)
    elsif args.empty?
      super(quoted_columns, **options)
    else
      super(quoted_columns, *args, **options)
    end
  end
end

ActiveRecord::ConnectionAdapters::PostgreSQL::SchemaStatements
  .prepend(AddIndexOpclassRuby3Fix)

# ── 17. AbstractAdapter#add_index_sort_order ─────────────────────────────────
# Abstract add_options_for_index_columns (reached via PG's override's super)
# calls add_index_sort_order(quoted_columns, options) at line 1209.
# Declared: def add_index_sort_order(quoted_columns, **options). Same trap.

module AddIndexSortOrderRuby3Fix
  def add_index_sort_order(quoted_columns, *args, **options)
    if args.length == 1 && args.first.is_a?(Hash) && options.empty?
      super(quoted_columns, **args.first)
    elsif args.empty?
      super(quoted_columns, **options)
    else
      super(quoted_columns, *args, **options)
    end
  end
end

ActiveRecord::ConnectionAdapters::AbstractAdapter
  .prepend(AddIndexSortOrderRuby3Fix)

# ── 18. AbstractController#template_exists? ──────────────────────────────────
# Rails 5.2 implicit_render.rb calls:
#   template_exists?(action_name.to_s, _prefixes, variants: request.variants)
# template_exists? is defined as:
#   def template_exists?(*args)
#     lookup_context.exists?(*args)
#   end
# In Ruby 2 the trailing `variants:` kwarg was auto-converted all the way to
# lookup_context.exists?(name, prefixes, partial, keys, **options). In Ruby 3
# the Hash is captured inside *args as a positional and splatted into the
# `partial` slot — making `partial = {variants: []}` (truthy). The resolver
# then looks for a PARTIAL named `root`, doesn't find one, returns false, and
# Rails raises ActionController::UnknownFormat. Result: EVERY HTML request in
# production returns 406, including the React SPA's root page. Fix: collect
# kwargs separately and forward them as kwargs.

module TemplateExistsRuby3Fix
  def template_exists?(*args, **kwargs)
    if kwargs.empty?
      lookup_context.exists?(*args)
    else
      lookup_context.exists?(*args, **kwargs)
    end
  end

  # Same issue for any_templates? which uses the same splat pattern.
  def any_templates?(*args, **kwargs)
    if kwargs.empty?
      lookup_context.any?(*args)
    else
      lookup_context.any?(*args, **kwargs)
    end
  end
end

AbstractController::ViewPaths.prepend(TemplateExistsRuby3Fix)
