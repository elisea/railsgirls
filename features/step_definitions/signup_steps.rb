require 'rspec'
require 'selenium-webdriver'

$password = 'passwordpassword'

Given(/^I am a new user$/) do
	$driver.find_element(:id => 'sign_up_link').click
end

When(/^I provide all necessary details$/) do
 name = $driver.find_element(:id => 'user_name').send_keys('Harry')
 email = $driver.find_element(:id => 'user_email').send_keys('harry@potter.com')
 password = $driver.find_element(:id => 'user_password').send_keys($password)
 confirm = $driver.find_element(:id => 'user_password_confirmation').send_keys($password)
end

Then(/^I can sign up$/) do
 sign_in = $driver.find_element(:id => 'sign_up').click
end

Then(/^access the app$/) do
  pending # express the regexp above with the code you wish you had
end


#TODO 
#need to work out how to clear the db as part of this or to increment the email
#need to add an assert
#create methods
#use page object
