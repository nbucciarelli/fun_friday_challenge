Feature: Root Page
  @two-one
  Scenario: Welcome 
    When I am on the home page
    Then I should see "Welcome to SimpleCRM"
    And I should see "Customer Relationship Manager"
