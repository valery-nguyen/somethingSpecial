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
