require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Expert23Zozo
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # to auto load lib/ directory
    config.i18n.default_locale = :ja
    config.autoload_paths += %W(#{config.root}/lib)

    # ここから下を追加
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.template_engine false
      g.test_framework :rspec, view_specs: false, helper_specs: false, fixture: true
      g.fixture_replacement :factory_girl, dir: "spec/support/factories"
    end
  end
end
