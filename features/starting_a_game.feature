Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering part 1
		Given I am on the homepage
		When I follow "Start a New Game"
		Then I should see "What's your name?"

	Scenario: Registering part 2	
		Given I am on the new game page
		When I click on submit button
		Then I should be registered as Player 1
		And I should see "Register Player 2" button

	Scenario: Name not registered
		Given I am on the new game page
		When I don't input my name
		And I click on submit button
		Then I should be registered as Player 1 with a default name
		And I should see "Register Player 2" button

