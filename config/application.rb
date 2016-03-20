require File.expand_path('../boot', __FILE__)

 require "active_record/railtie"
 require "action_controller/railtie"
 require "action_mailer/railtie"
 require "sprockets/railtie"

Bundler.require(:default , Rails.env)

module MarketPlaceApi
  class Application < Rails::Application

  # don't generate RSpec tests for views and helpers
  config.generators do |g|
    g.test_framework :rspec, fixture: true
    g.fixture_replacement :factory_girl, dir: 'spec/factories'
    g.view_specs false
    g.helper_specs false
    g.stylesheets = false
    g.javascripts = false
    g.helper = false
  end

  config.autoload_paths += %W(\#{config.root}/lib)
  end
end
