Feature:
Each user needs to login using the credentials he used to register with the system.
As a user
So that I can use the website to buy or sell an item
I want to login to the system

Scenario:Login
Given I am on http://localhost:3000/static_pages/login
Then I fill in Email and Password
When I press "Login"
Then show me the Menu page
