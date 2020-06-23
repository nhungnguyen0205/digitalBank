Feature: Entitlements
  Scenario: Verify that ESS user can see Entitlement page when click on Entitlements on Menu
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    And I focus mouse on "Entitlements"
    And I click on "My Entitlements" on SubMenu
    Then "My Leave Entitlements" page will be displayed
    Then At column 1, leave types: "Vacation US","Maternity US" and "Paternity US" will be displayed
    Then At column 3, "2020-01-01" will be displayed at "Valid From"
    Then At column 4, "2020-12-31" will be displayed at "Valid To"
    Then At column 5, "12" days for "Vacation US", "5" days for "Maternity US", and "4" days for "Paternity US".