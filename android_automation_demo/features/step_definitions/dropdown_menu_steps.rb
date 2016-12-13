Then(/^I press on More Options button$/) do
  find_element(accessibility_id:"More options").click
end

Then(/^I press on Settings button$/) do
  text("Settings").click
end

