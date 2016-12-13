@dropdown_menu @regression
Feature: As a user I would like to use dropdown menu 

    Background: 
       Given I land on Home screen

    Scenario: User able to open Settings
        Then I press on More Options button 
        And I press on Settings button 
        Then I verify "Settings" as current unit conversion 