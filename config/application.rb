require_relative "boot"

# Minimal Rails API setup - only load what we absolutely need
require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Collaborate
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.2

    # Configuration for API mode
    config.api_only = true
    
    # Explicitly disable asset pipeline
    config.generators.assets = false
    config.generators.helper = false
    
    # Configure CORS middleware
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*' # In production, specify your React Native app's domain
        resource '*',
          headers: :any,
          methods: [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
