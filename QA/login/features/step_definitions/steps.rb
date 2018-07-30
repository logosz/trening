require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
uname = 'jog1gem@gmail.com'
pwd = 'jogqagameloft66'

Given("I Open the facebook homepage") do
  driver.navigate.to "https://facebook.com"
end

Given("I input username") do
  driver.find_element(:id=>"email").send_keys(uname)
end

Given("I input password") do
  driver.find_element(:id=>"pass").send_keys(pwd)
end

Given("I submit") do
  driver.find_element(:id=>"u_0_2").submit
end
