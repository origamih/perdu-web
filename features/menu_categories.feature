Feature: menu categories
As a Admin
I want to manage Menu Categories

Background: 
Given Admin has already registered

Scenario: User accesses Menu Category
Given I am on the home page and not logged in
When I access Menu Category page
Then I should be asked for logging in

When I access new Menu Category page
Then I should be asked for logging in

Scenario: Admin accesses Menu Category
Given I am logged in
When I access Menu Category page
Then I should see Menu Category list

When I access new Menu Category page
Then I should be able to create new Menu Category