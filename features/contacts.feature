Feature: Contacts

  Scenario: List Contacts
  
    Given I am on the home page
    And I have a contact name "John Smith" with an email address of "jsmith@email.com"
    And I have a contact name "Mark Void" with an email address of "mvoid@email.com"
    When I click on the "Contacts" link
    Then I should see the "Contacts" page header
    And I should see "John Smith" 
    And I should see "jsmith@email.com"
    And I should see "Mark Void"
    And I should see "mvoid@email.com"
    