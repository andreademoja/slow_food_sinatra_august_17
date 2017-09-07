Given(/^I visit the site$/) do
  visit '/'
end

Then(/^I should see a message saying "([^"]*)"$/) do |message|
  expect(page).to have_content message
end

Given(/^there is a dish named "([^"]*)" in our database$/) do |dish_name|
  Dish.create(name: dish_name)
end

Given(/^I click on the "([^"]*)" button$/) do |register|
  expect(page).to have_selector :button, register
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |input_field, value |
  visit '/auth/create'
  fill_in(input_field, :with => value)
  #expect(input_field).to eq value
end

Given(/^I click on "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
