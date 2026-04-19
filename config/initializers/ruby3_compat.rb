# Fix for Rails 5.2 compatibility with Ruby 3.x
#
# Ruby 3.0 removed automatic conversion of a trailing Hash into keyword
# arguments. The Rails 5.2 middleware stack builder calls:
#
#   klass.new(app, *args)
#
# where args may contain a Hash that was intended to be splatted as kwargs.
# Patching the builder to detect and forward those hashes as ** fixes every
# middleware (ActionDispatch::Static, ActionDispatch::SSL, etc.) in one place.

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
