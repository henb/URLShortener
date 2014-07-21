require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module UrlShortener
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework false
      g.integration_tool false
      g.fixture_replacement false
      g.assets false
      g.helper false
    end
  end
end
