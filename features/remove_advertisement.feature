Feature: Remove Ads
As a user who posted the ad,
So that I can delete the ad after it has been sold,
Then I want the option to delete my ads.

Scenario: Remove - Confirm Option
Given I am on http://localhost:3000/deals
Then I choose 'Remove'
Then I press OK in the alert box
Then show me the display page with the deal removed from the page

Scenario: Remove - Cancel Option
Given I am on http://localhost:3000/deals
Then I choose 'Remove'
Then I press Cancel in the alert box
Then show me the display page without any changes
