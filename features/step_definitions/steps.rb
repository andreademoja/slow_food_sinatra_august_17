Given(/^I visit the site$/) do
  visit '/'
end

Then(/^I should see a message saying "([^"]*)"$/) do |message|
  expect(page).to have_content message
end

Given(/^there is a dish named "([^"]*)" in our database$/) do |dish_name|
  Dish.create(name: dish_name, price: 10)
end

Given(/^its dish price is "([^"]*)" in our database$/) do |dish_price|
  dish = Dish.first(name: 'Carbonara')
  dish.update(price: dish_price)
end

Then(/^I should se a message saying "([^"]*)"$/) do |message|
  expect(page).to have_content message
end

Given(/^the Carbonara has the category "([^"]*)" in our database$/) do |dish_category|
  dish = Dish.first(name: 'Carbonara')
  dish.update(category: dish_category)
end

Then(/^I should see message saying "([^"]*)"$/) do |message|
  expect(page).to have_content message
end

Given(/^its dish desription is "([^"]*)" in our database$/) do |dish_description|
  dish = Dish.first(name: 'Carbonara')
  dish.update(description: dish_description)
end

Given(/^the following users exist:$/) do |table|
  table.hashes.each do |user|
    User.create!(user)
  end
end

Given(/^I log in as an admin$/) do
  user = User.first(username: 'admin')
  login_as(user)
end

Given(/^I visit the protected page$/) do
  visit '/protected'
end

Then(/^show me the page$/) do
  save_and_open_page
end
