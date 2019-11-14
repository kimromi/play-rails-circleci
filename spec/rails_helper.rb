ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../config/environment', __dir__)

require 'spec_helper'
require 'rspec/rails'
require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'

Rails.application.routes.default_url_options[:host] = 'localhost'

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Rails.application.routes.url_helpers

  config.before(:each, type: :system) do
    driven_by :selenium_chrome_headless
  end
end
