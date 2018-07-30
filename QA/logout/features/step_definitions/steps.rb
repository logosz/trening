require 'selenium-webdriver'
options = Selenium::WebDriver::Firefox::Options.new
options.profile = 'otomesen'
driver = Selenium::WebDriver.for :firefox, options: options
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
  driver.find_element(:id=>"loginbutton").click
end

Given("I tab dropdown menu") do
  #driver.switch_to.alert.dismiss
  driver.find_element(:id=>"userNavigationLabel").click
end

Given("I select logout") do
  #ddM = driver.find_element(:class=>"uiScrollableAreaContent")
  #pilih = Selenium::WebDriver::Support::Select.new(ddM)
  #pilih.select_by(:text=>'Log Out')
  driver.find_element(:id=>'u_18_5').click
end
