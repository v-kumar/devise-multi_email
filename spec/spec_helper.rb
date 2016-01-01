$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

ENV['RAILS_ENV'] = 'test'

require 'capybara/rspec'

require 'devise/multi_email'
require 'rails_app/config/environment'
require 'rails/test_help'
require 'orm/active_record'

Capybara.app = RailsApp::Application

RSpec.configure do |config|
  config.include RailsApp::Application.routes.url_helpers
end