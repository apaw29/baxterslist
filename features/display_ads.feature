Feature: Display details of Ad
As a user
So that I can view Advertisements for what I want
I want to find a suitable seller whose products meet my requirements
Then I want the list of ads to be displayed
Scenario: Show details
Given I am on http://localhost:3000/deals
Then I choose 'Show'
Then show me the details of the deal
