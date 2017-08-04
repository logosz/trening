require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

# Given(/^I Open the facebook homepage$/) do
Given(/^I Open the crossover admin homepage$/) do
  # driver.navigate.to "https://facebook.com/"
  driver.navigate.to "http://localhost:2368/ghost"
end

Given(/^Given I enter username $/) do
  driver.findElement(By.id("ember615"))
  driver.sendKeys("admin@test.com")
end

Given(/^Given I enter password $/) do
  driver.findElement(By.id("ember621"))
  driver.sendKeys("1q2w3e4r")
  driver.submit
end
