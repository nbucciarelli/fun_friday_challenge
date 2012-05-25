Given /^I have a contact name "(.*?)" with an email address of "(.*?)"$/ do |name, email|
  Contact.create name: name, email: email
end

Given /^I am on the New Contact page$/ do 
  visit new_contact_path
end

Given /^I am on the Contacts page$/ do
  visit contacts_path
end

When /^I click "(.*?)" link$/ do |link|
  page.should have_content(link)
  click_link link
end