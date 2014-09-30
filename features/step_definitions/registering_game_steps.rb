Given(/^I am on the homepage$/) do
  visit ("/")
end

When(/^I follow "(.*?)"$/) do |link|
  click_link("Start a new game")
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I am on the new game page$/) do
  visit ("/new_game")
end

When(/^I click on submit button$/) do
	first('input[type="submit"]').click
end

Then(/^I should be registered as Player (\d+)$/) do |text|
   expect(page).to have_content("you are Player 1")
end

Then(/^I should see "(.*?)" button$/) do |arg1|
  expect(page).to have_content("Register Player 2")
end



