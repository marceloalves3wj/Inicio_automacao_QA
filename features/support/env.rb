
require "capybara"
require "capybara/cucumber" 
require "selenium-webdriver"
require "faker" 
require "rspec"
require "yaml"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end