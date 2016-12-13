@gestures @regression
Feature: User able to use gestures

    Background: 
        Given I land on Home screen
    
    Scenario: User able to swipe to open side menu 
        When Wnen I swipe from left to right 
        Then I verify "Unit Converter" as current unit conversion 

    Scenario: User able to swipe to open calcualtor 
        When Wnen I swipe from right to left
        Then I verify "Calculator" as current unit conversion