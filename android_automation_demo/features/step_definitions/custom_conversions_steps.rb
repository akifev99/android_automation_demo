Then(/^I press on Create Your First Conversion button$/) do
  find_element(id: "layout_info_custom").find_element(xpath: "//android.widget.Button[@text= 'Create your first conversion']").click
end

Then(/^I type "([^"]*)" as new conversion name$/) do |conversion_name|
  find_element(id: "edit_custom_conversion_category_name").send_keys(conversion_name)
end

When(/^I press on NEW UNIT button on new conversions screen$/) do
  find_element(id: "btn_new_custom_unit").click
end

When(/^I type "([^"]*)" as new unit name$/) do |unit_name|
  find_element(id: "text_input_layout_unit_name").send_keys(unit_name)
end

Then(/^I type "([^"]*)" as a new unit symbol$/) do |symbol_name|
  find_element(id: "text_input_layout_unit_symbol").send_keys(symbol_name)
end

Then(/^I type "([^"]*)" as new unit value$/) do |value_name|
  find_element(id: "text_input_layout_unit_value").send_keys(value_name)
end

Then(/^I press on checkmark icon on new unit screen$/) do
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[contains(@resource-id,'action_confirm_custom_unit')]").click
end

Then(/^I press on OK button on new conversions screen$/) do
  find_element(id: "btn_custom_conversion_details_ok").click
end

Then(/^I verify conversions with name "([^"]*)" on My Conversions Screen$/) do |conversion_name|
  find_element(id: "custom_conversions_list").find_element(xpath: "//android.widget.TextView[@text='#{conversion_name}']")
end
