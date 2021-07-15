require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CryptoTrackerApi
  class Application < Rails::Application

    # This also configures session_options for use below
config.session_store :cookie_store, key: '_crypto_tracker_api'

# Required for all session management (regardless of session_store)
config.middleware.use ActionDispatch::Cookies

config.middleware.use config.session_store, config.session_options


    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
