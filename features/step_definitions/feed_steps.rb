Given /^a feed named "([^"]*)"$/ do |name|
  Feed.create(:name => name)
end

When /^I am on the feeds page$/ do
  visit feeds_url
end

Then /^I should see "([^"]*)"$/ do |name|
  page.should have_content name
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |label, value|
  fill_in label, :with => value
end

When /^I click "([^"]*)"$/ do |button|
  click_button "Add"
end

