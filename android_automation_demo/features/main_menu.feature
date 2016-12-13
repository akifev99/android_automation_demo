@main_menu @regression
Feature: As a user I would like to convert my Units
     
    Background: 
        Given I land on Home screen
		When I press on Menu icon

	Scenario: When I tap on menu icon, I should see left side menu
		Then I verify "Unit Converter" as current unit conversion
    
	Scenario: I should be able to open My conversions screen
		#And I press on ""
		Then I select "My conversions" unit
		Then I land on My Converions screen
    @wip 
	Scenario: I should be able to see conversion history and cleanup results
	    And I press on History 
	    Then I verify "History" as current unit conversion  
	    And I should see "No history right now" text 
	    Then I press on Menu icon 
	    Then I select "Length" unit  
	    When I type "1" in application keyboard 
	    When I press on Menu icon 
	    And I press on History 
	    Then I land on History screen
	    And I verify "Length" as 1st result in History list 
	    Then I press X to remove 1st result in History list
	    And I should see "No history right now" text

    
		