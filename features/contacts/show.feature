Feature: Show Contact

Scenario: View Contact

Given I have a contact name "John Smith" with an email address of "jsmith@email.com"
And I am on the Contacts page
When I click "John Smith" link
Then I should see "Contact Details"
And I should see "John Smith"
And I should see "jsmith@email.com"
And I should see "Edit"
And I should see "Remove"


Scenario: Return from Show Contact

Given I have a contact name "John Smith" with an email address of "jsmith@email.com"
And I am on the Contacts page
And I click "John Smith" link
And I should see "Contact Details"
And I should see "John Smith"
When I click "Return to Contacts" link
Then I should see "Contacts"
And I should see "New Contact"