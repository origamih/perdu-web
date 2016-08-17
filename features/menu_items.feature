Feature: menu items
As a Admin
I want to add, edit, delete Menu Items
As a User
I want to see the menu items

Background: 
Given Admin has already registered

Scenario: User accesses Menu Item
Given I am on the home page and not logged in
When I access Menu Item page
Then I should be asked for logging in

When I access new Menu Item page
Then I should be asked for logging in

Scenario: Admin accesses Menu Item
Given I am logged in
When I access new Menu Item page
Then I should be able to create new Menu Item

Scenario: User accesses Menu pages
Given I am on the home page and not logged in
When I access Cocktails Menu page
Then I should see the Cocktails Menu List

When I access Others Menu page
Then I should see the Others Menu list
