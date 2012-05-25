Feature: Remove Contact
  Background: Stage Contact
  Given I have a contact name "John Smith" with an email address of "jsmith@email.com"
  And I am on the Contacts page
  And I click "John Smith" link
  
  Scenario: Successfully Remove Contact
  Given I should see "Contact Details"
  When I click "Remove" link
  Then I should see "Contact was successfully removed."
  And I should see "Contacts"
  And I should not see "John Smith"
