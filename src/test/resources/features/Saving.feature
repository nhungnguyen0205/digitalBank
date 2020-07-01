Feature: Saving Account
  Scenario: No Accounts pop up will be displayed when there are no account in Saving account
    Given I open page with url "http://dbankdemo.com/login"
    When I type "vctv1112@gmail.com" on "User Name" field
    And I type "Vstv12345678" on "Password" field
    And I click on "Sign in" button
    Then I wait some minutes
    When I click on "Savings" on the left menu
    And I click on "View Savings" on the sub menu
    Then popup "No Accounts" will be displayed
  Scenario: Verify that New Savings Account page will be displayed when click on Continue button on No Accounts popup
    Given I open page with url "http://dbankdemo.com/login"
    When I type "vctv1112@gmail.com" on "User Name" field
    And I type "Vstv12345678" on "Password" field
    And I click on "Sign in" button
    Then I wait some minutes
    When I click on "Savings" on the left menu
    And I click on "View Savings" on the sub menu
    Then I wait some minutes
    When I click on "Continue" button on pop up 
    Then "New Savings Account" page will be displayed