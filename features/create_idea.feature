Feature: Sign up and create an idea
	In order to share my great ideas
	As a collaborator
	I am able to login and record an idea


	Scenario: Sign up a new account
		Given I am a new user
		When I provide all necessary details
		Then I can sign up
		And access the app
		