Feature: End to end_ Approve Leave

  Scenario Outline: ESS user request leave, Admin approve this request and ESS user check Leave status
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I focus mouse on "Leave"
    When I click on "Apply" on SubMenu
    And I select "Vacation US" in "Leave Type" field
    And I type <fromDate> in "From Date" field
    And I type <fromDate> in "To Date" field
    And At "To Date", I press enter on my keyboard
    And I select "Full Day" in "Duration" field
    And I click on "Apply" button
    Then I wait some seconds
    And I click on "Welcome Fiona" link on the top right corner.
    Then I wait some seconds
    When I click on "Logout" link to Logout
    Then I wait some seconds
    When I type username "Admin"
    And I type pass "admin123"
    And I click on "LOGIN" button
    Then I wait some seconds
    When At Pending Leave Request, I click on name "Fiona" with date <fromDate>
    Then I wait some seconds
    When At column 7, I select <statusRequest>
    And I click on "Save" button
    Then I wait some seconds
    When I click on "Welcome Admin" link on the top right corner.
    Then I wait some seconds
    When I click on "Logout" link to Logout
    Then I wait some seconds
    When I type username "Fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Leave" at Dashboard
    Then "My Leave List" page will be displayed
    Then At column 6, status of row which contains <fromDate> is changed to <status>
    Examples:
      |fromDate|statusRequest|status|
      |"2020-07-20"|"Approve" |"Scheduled"|
      |"2020-07-21"|"Reject"|"Rejected"|
      |"2020-07-22"|"Cancel"|"Cancelled"|

#    |fromDate|toDate|requestFromDate|fromDateResult|status|
#    |  "2020-07-02"|"2020-07-02"|"2020-07-02"| "2020-07-02"|"Scheduled"|
