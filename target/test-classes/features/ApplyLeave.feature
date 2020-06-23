@leave
Feature: Apply Leave
  Scenario: Verify that ESS can see "Apply", "My Leave", "Entitlements" and "Reports" submenu
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    Then I can see "Apply", "My Leave", "Entitlements" and "Reports" submenu
@Initialization
  Scenario Outline: Verify that ESS can apply leave Full Day with valid data
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    And I click on "Apply" on SubMenu
    And I wait some seconds
    And I select <leaveTypeValue> in "Leave Type" field
    And I type <startDate> in "From Date" field
    And I type <endDate> in "To Date" field
    And At "To Date", I press enter on my keyboard
    And I select <durationValue> in "Duration" field
    And I click on "Apply" button
    And I wait some seconds
    And I click on "My Leave" on SubMenu
    Then I wait some seconds
    Then new record will be added in "My Leave" page with data:"2020-06-25" in "Date", "Vacation US" in "Leave Type", "11.00" in "Leave Balance", "8.00" in "Number of Hours", and "Pending Approval" in "Status".
    Examples:
    |leaveTypeValue|startDate|endDate|durationValue|
    |"Vacation US" |"2020-06-25"|"2020-06-25" |"Full Day"|
#    |"Vacation US" |"2020-06-16"|"2020-06-16" |"Half Day"|
@Initialization
  Scenario Outline: Verify that ESS can apply leave Haft Day with valid data
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    And I click on "Apply" on SubMenu
    And I wait some seconds
    And I select <leaveTypeValue> in "Leave Type" field
    And I type <startDate> in "From Date" field
    And I type <endDate> in "To Date" field
    And At "To Date", I press enter on my keyboard
    And I select <durationValue> in "Duration" field
    And I click on "Apply" button
    And I wait some seconds
    And I click on "My Leave" on SubMenu
    Then I wait some seconds
    Then new record will be added in "My Leave" page with data:"2020-06-22 (09:00 - 13:00) Half Day" in "Date", "Paternity US" in "Leave Type", "3.50" in "Leave Balance", "4.00" in "Number of Hours", and "Pending Approval" in "Status".
    Examples:
      |leaveTypeValue|startDate|endDate|durationValue|
      |"Paternity US" |"2020-06-22"|"2020-06-22" |"Half Day"|
@Initialization
  Scenario: Verify that ESS can apply leave specify time with valid data
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    And I click on "Apply" on SubMenu
    And I wait some seconds
    And I select "Maternity US" in "Leave Type" field
    And I type "2020-06-29" in "From Date" field
    And I type "2020-06-29" in "To Date" field
    And At "To Date", I press enter on my keyboard
    And I select "Specify Time" in "Duration" field
    And I select "09:00" in "From" field
    And I select "11:30" in "To" field
    And I click on "Apply" button
    And I wait some seconds
    And I click on "My Leave" on SubMenu
    Then new record will be added in "My Leave" page with data:"2020-06-29 (09:00 - 11:30)" in "Date", "Maternity US" in "Leave Type", "4.69" in "Leave Balance", "2.50" in "Number of Hours", and "Pending Approval" in "Status".

  Scenario Outline: Verify that ESS user can not apply leave with invalid data
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    And I click on "Apply" on SubMenu
    And I wait some seconds
    And I select <leaveType> in "Leave Type" field
    And I type <startDate> in "From Date" field
    And I type <endDate> in "To Date" field
    And At "To Date", I press enter on my keyboard
    And I wait some seconds
    And I click on "Apply" button
    Then message <err> will be appeared
    Examples:
       | leaveType           | startDate      |endDate        | err        |
#       Blank fields
       | "--Select--"        | "2020-06-25"   | "2020-06-25"  |"Required" |
       | "Vacation US"        | " "   | "2020-06-25"  |"Should be a valid date in yyyy-mm-dd format" |
       | "Vacation US"        | "2020-06-25"   | "22255"  |"Should be a valid date in yyyy-mm-dd format" |
#   End date < start date
       | "Vacation US"        | "2020-06-25"   | "2020-06-24"  |"To date should be after from date" |
#    Duplicate leave date
       | "Vacation US"        | "2020-06-25"   | "2020-06-25"  |"Failed to Submit" |
#    Leave request > leave balance
       | "Vacation US"        | "2020-07-01"   | "2020-07-31"  |"Leave Balance Exceeded" |
#    Different Leave type but having same request day
       | "Maternity US"        | "2020-06-25"   | "2020-06-25"  |"Failed to Submit" |





