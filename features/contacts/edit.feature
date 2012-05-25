Feature: Edit Contacts
  Background: Stage Contact
  Given I have a contact name "John Smith" with an email address of "jsmith@email.com"
  And I am on the Contacts page
  And I click "John Smith" link
  
  Scenario: Successfully Edit Contact
  Given I should see "Contact Details"
  When I click "Edit" link
  And I fill in "Name" with "Jake Smith"
  And I press "Update Contact"
  Then I should see "Contact was successfully updated."
  And I should see "Contact Details"
  And I should see "Jake Smith"

  Scenario: Require Name
  Given I should see "Contact Details"
  When I click "Edit" link
  And I fill in "Name" with ""
  And I press "Update Contact"
  Then I should see "Name can't be blank"
  And I should see "Edit Contact"