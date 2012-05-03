Given /^a feed named "([^"]*)"$/ do |name|
  Feed.new(name)
end

When /^I am on the feeds page$/ do
  visit feeds_url
end

Then /^I should see "([^"]*)"$/ do |name|
  page.should have_content name
end
