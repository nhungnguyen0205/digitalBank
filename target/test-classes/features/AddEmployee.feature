@Initialization
Feature: Create employees
  Scenario: Create employee
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "admin"
    And I type pass "admin123"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "PIM"
    And I click on "Add Employee" on SubMenu
    And I type "Fiona" in "First Name" field
    And I type "Canvas" in "Last Name" field
    And I check on "Create Login Details" checkbox
    And I wait some seconds
    And I type "Fiona" in "User Name" field
    And I type "12345678" in "Password" field
    And I type "12345678" in "Confirm Password" field
    And I click on "Save" button
    Then I wait some seconds
    Then "Personal Details" page will be displayed

  Scenario Outline: Add Leave Entitlement for employee by admin
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "admin"
    And I type pass "admin123"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    And I focus mouse on "Entitlements"
    And I click on "Add Entitlements" on SubMenu
    Then I wait some seconds
    When I type "Fiona Canvas" in "Employee " field
    And At "Employee ", I press enter on my keyboard
    And I select <leaveTypeValue> in "Leave Type" field
    And I type <leaveAmountValue> in "Entitlement" field
    And I click on "Save" button
    Then I wait some seconds
    Then message "Successfully Added" will be appeared
    Examples:
      | leaveTypeValue|leaveAmountValue|
      | "Vacation US"  | "12"   |
      | "Maternity US" | "5"   |
      |"Paternity US"  | "4" |



