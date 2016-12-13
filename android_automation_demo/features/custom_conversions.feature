@custom_conversions @regression
Feature: User able manage custom I press on My Conversions 
@new_conversion 

Scenario: User able to create new custom conversion 
     Given I land on Home screen
	 When I press on Menu icon
	 Then I select "My conversions" unit
	 Then I press on Create Your First Conversion button
	 And I type "Power" as new conversion name
	 When I press on NEW UNIT button on new conversions screen 
	 And I type "Horse power" as new unit name
	 Then I type "HP" as a new unit symbol
	 And I type "1" as new unit value 
	 Then I press on checkmark icon on new unit screen 
	 When I press on NEW UNIT button on new conversions screen 
	 And I type "Mule Power" as new unit name
	 Then I type "MP" as a new unit symbol
	 And I type "0.5" as new unit value 
	 Then I press on checkmark icon on new unit screen 
	 Then I press on OK button on new conversions screen
	 And I verify conversions with name "Power" on My Conversions Screen 