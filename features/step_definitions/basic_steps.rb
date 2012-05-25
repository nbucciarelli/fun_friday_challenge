When /^I am on the home page$/ do
  visit '/'
end

Then /^I should see "(.*?)"$/ do |text|
  page.should have_content(text)
end

When /^I click the "(.*?)" link$/ do |text|
  click_link(text)
end

Then /^I should see the "(.*?)" page header$/ do |text|
  find('header').has_content?(text)
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in(field, with: value)
end

When /^I press "(.*?)"$/ do |button|
  click_on button
end

Then /^I should not see "(.*?)"$/ do |text|
  page.should_not have_content(text)
end