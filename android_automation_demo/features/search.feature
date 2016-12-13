@search @regression
Feature: As a User I would like to perform search 

   @search_for_conversion
   Scenario: User able to search for existing unit conversion 
       Given I land on Home screen 
       Then I press on Search icon 
       When I type "Temperature" to search field 
       And I press on Search icon on soft keyboard
       Then I verify "Temperature" as current unit conversion 
       And Left Unit picker value should be "Celsius"
	   And Right Unit picker value should be "Fahrenheit"