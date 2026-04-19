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
  def create_table_definition(*args, **kwargs)
    PostgreSQL::TableDefinition.new(native_database_types, *args, **kwargs)
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
