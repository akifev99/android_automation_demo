Given(/^I land on Home screen$/) do
  sleep 2
  find_element(accessibility_id:"Open navigation drawer")
  find_element(accessibility_id:"More options")
end


Then(/^I should see left side Menu$/) do
  text("Unit Converter")
end

#When(/^I press on My Conversions$/) do
  #text("My conversions").click
#end

Then(/^I land on My Converions screen$/) do
  text("My conversions")
end

When(/^I press on History$/) do
  text("History").click
  sleep 2
end

Then(/^I verify "([^"]*)" as (\d+)(?:st|nd|rd|th) result in History list$/) do |name, index| 
  #binding.pry
  result = exists{find_element(id: "history_conversion_list").find_elements(id: "history_single_line")[index.to_i - 1].find_element(xpath: "//android.widget.TextView[@text= '#{name}']")}
  fail("ERROR " + "Element '#{name}' not found in History list") if result == false 
end

Then(/^I press X to remove (\d+)(?:st|nd|rd|th) result in History list$/) do |index|
  find_element(id: "history_conversion_list").find_elements(id: "deleteIcon")[index.to_i - 1].click
end
