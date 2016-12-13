Then(/^I should see "([^"]*)" text$/) do |text|
  result = exists{text("No history right now")}
  fail("ERROR: " + "Element with name #{text} not found") if result == false 
end

When(/^I press on Menu icon$/) do
  find_element(accessibility_id:"Open navigation drawer").click
  sleep 1
end

Then(/^I land on History screen$/) do
  text("History").click
end

Then(/^I select "([^"]*)" unit$/) do |unit_name|
  find_element_in_list(unit_name)
  find_element(id: "category_list_drawer").find_element(xpath: "//android.widget.TextView[@text= '#{unit_name}']").click
end

Then(/^I verify "([^"]*)" as current unit conversion$/) do |conversion_name|
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text= '#{conversion_name}']")
end
