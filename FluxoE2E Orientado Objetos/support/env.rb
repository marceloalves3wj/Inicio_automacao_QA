
require "capybara"
require "capybara/cucumber" 
require "selenium-webdriver"
require "faker" 
require "rspec"
require "yaml"

EL = YAML.safe_load(File.read('features/support/elements.yaml'))

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end