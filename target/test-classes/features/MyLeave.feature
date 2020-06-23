@leave
Feature: My Leave
  Scenario: Verify that My Leave page will be displayed when ESS user click on My Leave on menu
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    And I click on "My Leave" on SubMenu
    Then "My Leave List" page will be displayed
  Scenario: Verify that Date and  Status can be clickable
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    And I click on "My Leave" on SubMenu
    Then I wait some seconds
    Then Date, Name, and Status can be clickable
  Scenario: Verify that PIM record will be displayed when ESS click on "Employee Name"
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    And I click on "My Leave" on SubMenu
    Then I wait some seconds
    When I click on data on the "1" row at column "2"
    Then "Personal Details" page will be displayed
  Scenario Outline: Verify that "My Leave Details" page will be displayed when ESS click on Date or Status
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    And I click on "My Leave" on SubMenu
    Then I wait some seconds
    When I click on data on the <rownum> row at column <column>
    Then "My Leave Details" page will be displayed
    Examples:
      |rownum|column|
#      Click on Date
      |  "1"  |"1"|
#      Click on Status
      |  "1"  |"6"|
    Scenario: Verify that ESS user can only have "Cancel" option his request
      Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
      When I type username "fiona"
      And I type pass "12345678"
      And I click on "LOGIN" button
      Then I wait some seconds
      When I focus mouse on "Leave"
      And I click on "My Leave" on SubMenu
      Then I wait some seconds
      Then At column "8" of row "1",ESS user can only see "Select Action" and "Cancel" in Actions dropdown list
    Scenario: Verify that ESS user can cancel his request
      Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
      When I type username "fiona"
      And I type pass "12345678"
      And I click on "LOGIN" button
      Then I wait some seconds
      When I focus mouse on "Leave"
      And I click on "Apply" on SubMenu
      And I wait some seconds
      And I select "Vacation US" in "Leave Type" field
      And I type "2020-07-02" in "From Date" field
      And I type "2020-07-02" in "To Date" field
      And At "To Date", I press enter on my keyboard
      And I select "Full Day" in "Duration" field
      And I click on "Apply" button
      And I wait some seconds
      And I click on "My Leave" on SubMenu
      Then I wait some seconds
      When At column 8, I select "Cancel" at row which contains "2020-07-02"
      And I click on "Save" button
      Then At column 6, status of row which contains "2020-07-02" is changed to "Cancelled"

