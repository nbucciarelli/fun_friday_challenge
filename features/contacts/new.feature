Feature: New Contact

Scenario: Successfully Create Contact

Given I am on the New Contact page
When I fill in "Name" with "Foo Bar"
And I fill in "Email" with "foo@email.com"
And I press "Create Contact"
Then I should see "Contact was successfully created."
And I should see the "Contacts" page header
And I should see "Foo Bar"
And I should see "foo@email.com"

Scenario: Create Contact with No Data

Given I am on the New Contact page
When I press "Create Contact"
Then I should see "Error creating contact"
And I should see "Name can't be blank"
And I should see "Email can't be blank"
And I should see "New Contact"

Scenario: Create Contact with No Email

Given I am on the New Contact page
When I fill in "Name" with "Foo Bar"
And I press "Create Contact"
Then I should see "Error creating contact"
And I should see "Email can't be blank"
And I should see "New Contact"