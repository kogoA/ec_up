require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# for stripe
Dotenv::Railtie.load

module EcUp
  class Application < Rails::Application
    config.paths.add 'lib', eager_load: true
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.i18n.default_locale = :ja

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.generators do |generator|
      generator.test_framework :rspec,
                       fixtures: true,
               controller_specs: false,
                   helper_specs: false,
                  routing_specs: false
      generator.fixture_replacement :factory_bot, dir: "spec/factories"
      
    end
  end
end
