Feature: Login 
  Scenario: User login successfully with with valid user name and valid password
    Given I open page with url "http://dbankdemo.com/login"
    When I type "vctv1112@gmail.com" on "User Name" field
    And I type "Vstv12345678" on "Password" field
    And I click on "Sign in" button
    Then I wait some minutes
    Then "Welcome Mia" will be displayed at the top right corner
  Scenario Outline: User login unsuccessfully with with valid user name and valid password
    Given I open page with url "http://dbankdemo.com/login"
    When I type <userName> on "User Name" field
    And I type <passWord> on "Password" field
    And I click on "Sign in" button
    Then I wait some minutes
    Then message with content "Invalid credentials or access not granted" will be displayed.
    Examples:
    |userName|passWord|
    |"vctv1112@gmail.com"|"Vstv12345"|
    |"vctv@gmail.com"|"Vstv1234578"|
    |""|"Vstv1234578"|
    |"vctv@gmail.com"|""|


