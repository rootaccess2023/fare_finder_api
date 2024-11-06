require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FareFinderApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Enable CORS for development environment
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'https://farefinder.vercel.app'
        resource '*',
          headers: :any,
          methods: [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end

    # Only loads a smaller set of middleware suitable for API only apps.
    config.api_only = true
  end
end
