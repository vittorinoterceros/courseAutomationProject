
Given(/^I am on login page$/) do
   @app.login.load
end

When(/^I enter "([^"]*)" and "([^"]*)" as user, password$/) do |user, password|
  @app.login.doLogin user, password
end

Then(/^I am successfully login as "([^"]*)"$/) do |name|
  expect(@app.home.has_user_profile_icon?)
end

When(/^I try to login with empty email and password$/) do
  @app.login.login_btn.click
end

Then(/^site gives warning message for empty email and password$/) do
  expect(@app.login).to have_error_msg :text => "Incorrect username or password"
end

And(/^I can't login to site$/) do
  expect(@app.login.has_login_btn?)
end
