require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium
end