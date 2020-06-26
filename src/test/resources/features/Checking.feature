Feature: checking account
  Scenario: User can create checking account with standard checking and individual Ownership
    Given I open page with url "http://dbankdemo.com/login"
    When I type "vctv1112@gmail.com" on "User Name" field
    And I type "Vstv12345678" on "Password" field
    And I click on "Sign in" button
    Then I wait some minutes
    When I click on "Checking" on the left menu
    And I click on "New Checking" on the sub menu
    Then I wait some minutes
    Then "New Checking Account" page will be displayed
    When  I select "Standard Checking"
    And I select "Individual"
    And I type "Checking Individual 1" on "Account Name" field
    And I type "20000" on "Initial Deposit Amount" field
    And I click on "Submit" button
    Then "Checking Individual 1" is displayed with following information and this bank is selected for default bank.
    |Account|Ownership|Balance|
    |Standard Checking|Individual|20000|
  Scenario: User can create checking account with standard checking and Joint Ownership
    Given I open page with url "http://dbankdemo.com/login"
    When I type "vctv1112@gmail.com" on "User Name" field
    And I type "Vstv12345678" on "Password" field
    And I click on "Sign in" button
    Then I wait some minutes
    When I click on "Checking" on the left menu
    And I click on "New Checking" on the sub menu
    Then I wait some minutes
    Then "New Checking Account" page will be displayed
    When  I select "Standard Checking"
    And I select "Joint"
    And I type "Checking Joint" on "Account Name" field
    And I type "18000" on "Initial Deposit Amount" field
    And I click on "Submit" button
    Then "Checking Joint" is displayed with following information and this bank is selected for default bank.
      |Account|Ownership|Balance|
      |Standard Checking|Joint|18000|
  Scenario: User can create checking account with Interest Checking and Individual Ownership
    Given I open page with url "http://dbankdemo.com/login"
    When I type "vctv1112@gmail.com" on "User Name" field
    And I type "Vstv12345678" on "Password" field
    And I click on "Sign in" button
    Then I wait some minutes
    When I click on "Checking" on the left menu
    And I click on "New Checking" on the sub menu
    Then I wait some minutes
    Then "New Checking Account" page will be displayed
    When  I select "Interest Checking"
    And I select "Individual"
    And I type "Interest Checking Inv" on "Account Name" field
    And I type "18000" on "Initial Deposit Amount" field
    And I click on "Submit" button
    Then "Interest Checking Inv" is displayed with following information and this bank is selected for default bank.
      |Account|Ownership|Balance|
      |Interest Checking|Individual|18000|
  Scenario: User can create checking account with Interest Checking and Joint Ownership
    Given I open page with url "http://dbankdemo.com/login"
    When I type "vctv1112@gmail.com" on "User Name" field
    And I type "Vstv12345678" on "Password" field
    And I click on "Sign in" button
    Then I wait some minutes
    When I click on "Checking" on the left menu
    And I click on "New Checking" on the sub menu
    Then I wait some minutes
    Then "New Checking Account" page will be displayed
    When  I select "Interest Checking"
    And I select "Joint"
    And I type "Interest Checking Joint 1" on "Account Name" field
    And I type "18000" on "Initial Deposit Amount" field
    And I click on "Submit" button
    Then "Interest Checking Joint 1" is displayed with following information and this bank is selected for default bank.
      |Account|Ownership|Balance|
      |Interest Checking|Joint|18000|