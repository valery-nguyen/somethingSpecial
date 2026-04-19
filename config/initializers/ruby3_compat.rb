# Fix for Rails 5.2 compatibility with Ruby 3.x
# Ruby 3.0 removed automatic conversion of trailing Hash to keyword arguments.
# ActionDispatch::Static was built assuming that old behavior.

module ActionDispatch
  class Static
    def initialize(app, path, deprecated_options = nil, index: 'index', headers: {})
      if deprecated_options.is_a?(Hash)
        index   = deprecated_options.fetch(:index, index)
        headers = deprecated_options.fetch(:headers, headers)
      end
      @app = app
      @file_handler = FileHandler.new(path, index: index, headers: headers)
    end
  end
end
