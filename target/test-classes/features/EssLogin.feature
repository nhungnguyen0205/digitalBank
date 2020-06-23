@login
Feature: ESS user can login
  Scenario: Verify ESS user can login successfully with valid username and valid pass
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then "Dashboard" page will be displayed

  Scenario Outline: Verify ESS user can not login with invalid data
    Given I open <url> page
    When I type username <username>
    And I type pass <pass>
    And I click on <btn> button
    Then message <err> will be appeared
    Examples:
      | url                                                              | username | pass       | btn     | err                   |
#  Verify ESS user can not login with invalid username and valid pass
      | "https://opensource-demo.orangehrmlive.com/index.php/auth/login" | "fiona1"  | "12345678" | "LOGIN" | "Invalid credentials" |
#  Verify ESS user can not login with valid username and invalid pass
      | "https://opensource-demo.orangehrmlive.com/index.php/auth/login" | "fiona"  | "123456789" | "LOGIN" | "Invalid credentials" |
      #  Verify ESS user can not login with blank username
      | "https://opensource-demo.orangehrmlive.com/index.php/auth/login" | ""  | "12345678" | "LOGIN" | "Username cannot be empty" |
#  Verify ESS user can not login with blank pass
      | "https://opensource-demo.orangehrmlive.com/index.php/auth/login" | "fiona"  | "" | "LOGIN" | "Password cannot be empty" |