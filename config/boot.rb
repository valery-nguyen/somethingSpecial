ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'bootsnap/setup' # Speed up boot time by caching expensive operations.

# Ruby 3.1+ (Psych 4) disabled YAML alias parsing by default for security.
# Rails 5.2 uses YAML anchors in database.yml (<<: *default), so we
# re-enable alias support globally before Rails loads any YAML config.
require 'psych'
module Psych
  class << self
    alias_method :_load_no_aliases, :load
    def load(yaml, aliases: true, **options)
      _load_no_aliases(yaml, aliases: aliases, **options)
    end
  end
end
