Given /^I am on the root page$/ do
  visit '/'
end

Then /^I should see the "(.*?)" link in the nav section$/ do |text|
  find('nav').should have_link(text)
end

When /^I click on the "(.*?)" link$/ do |text|
  find('nav').click_link(text)
end
