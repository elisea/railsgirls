require 'selenium-webdriver'
require 'database_cleaner'
require 'database_cleaner/cucumber'

DatabaseCleaner.strategy = :truncation

Before do
  $setup_complete = false
  return $setup_complete if $setup_complete == true

  $driver = Selenium::WebDriver.for :firefox
  $driver.navigate.to "localhost:3000"

  $setup_complete = true
end


at_exit do
  $driver.close
  DatabaseCleaner.clean
end