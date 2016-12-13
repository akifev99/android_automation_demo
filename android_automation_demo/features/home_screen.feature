@home_screen @regression
Feature: Tests for Home screen functionality

    Background: 
        Given I land on Home screen
	@wip3
	Scenario: Default values on Home screen is Foot and Centimeter
		Then Left Unit picker value should be "Foot"
		And Right Unit picker value should be "Centimeter"
		Then Left Unit picker value should be "Inch"
 
@wip2
	Scenario: Show All button should be disabled at launch
		Then Show All button should be disabled	
		When I type "1" in application keyboard 
		Then Show All button should be enabled	

	@units_conversion
	Scenario Outline: Verify default conversion
		When I type "<target>" in application keyboard 
		Then I should see result as "<result>"
	Examples:
	| target | result |
	| 1      | 30.48  |
	| 2      | 60.96  |
	| 10     | 304.8  |

	Scenario: User able to add conversion to Favorite list
	    When when I press on add to Favorites icon
	    And I press on Menu icon 
	    Then I press on Favorite Conversions button
	    And I verify "Length" added to Favorite Conversions screen

    
	Scenario Outline: User able to select different values from unit pickers  
	    Then I select "<value>" from left unit picker 
	    When I type "<target>" in application keyboard 
	    And I should see result as "<result>" 
	Examples: 
	| value | target | result |
	| Inch  | 1      | 2.54   |
	| Yard  | 1      | 91.44  |
	
	    
	Scenario: User able to convert different unit  
	    When I press on Menu icon
	    Then I select "Volume" unit 
	    Then I select "Gallon U.K." from right unit picker
	    When I type "1" in application keyboard 
	    And I should see result as "0.8327" 
 
   Scenario: User able to convers speed
	    When I press on Menu icon
	    Then I select "Speed" unit 
	    When I type "1" in application keyboard 
	    And I should see result as "1.6093"

	Scenario: User able to switch value unit in pickers 
	    Then I prees on reverse pickers button 
	    Then Left Unit picker value should be "Centimeter"
		And Right Unit picker value should be "Foot"




