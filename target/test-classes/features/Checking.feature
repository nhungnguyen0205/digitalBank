Feature: checking account
  Scenario: User can create checking account with valid data
    Given I open page with url "http://dbankdemo.com/login"
    When I type "vctv1112@gmail.com" on "User Name" field
    And I type "Vstv12345678" on "Password" field
    And I click on "Sign in" button
    Then I wait some minutes
    When I click on "Checking" on the left menu
    And I click on "New Checking" on the sub menu
    Then "New Checking Account" page will be displayed
