Given(/^I am on the homepage$/) do
  visit ("/")
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_on "New Game"
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content("What's your name?")
end

Given(/^I am on the new_game page$/) do
  visit ("/new_game")
end

When(/^I click on submit button$/) do
 	first('input[type="submit"]').click
end

Then(/^I am on the Player (\d+) page$/) do |arg1|
	  visit ("/new_game/player1")
end


