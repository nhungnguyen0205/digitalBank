@info
Feature: Personal Details page
  Scenario Outline: Verify ESS user can view Personal Details page
    Given I open <url> page
    When I type username <username>
    And I type pass <pass>
    And I click on <btn> button
    Then I wait some seconds
    When I click on <tab> on the top menu
    And I click on <menu> on the left side
    Then <title> page will be displayed
    Examples:
      | url                                                              | username | pass       | btn     | tab       | menu               | title              |
      | "https://opensource-demo.orangehrmlive.com/index.php/auth/login" | "fiona"  | "12345678" | "Login" | "My Info" | "Personal Details" | "Personal Details" |

  Scenario: Verify ESS user can able to edit some certain fields on Personal Details
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on "Personal Details" on the left side
    And I click on "Edit" button
    Then "First Name", "Middle Name", "Last Name" , "Other Id", "License Expiry Date","Gender", "Marital Status","Nationality" can be edited

  Scenario: Verify ESS user can update First Name, Middle Name,Last Name , Other ID, License Expired Date, Gender, Marital Status, Nationality successfully.
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on "Personal Details" on the left side
    And I click on "Edit" button
    And I enter valid data on the page
      |First Name|Middle Name |Last Name|Other Id|License Expiry Date|Gender|Marital Status|Nationality|
      |Fiona1|M               |Pham     |112|2020-05-27              |Female|Married       |Vietnamese |
    And I click on "Save" button
    Then data saved successfully wit new data
      |First Name|Middle Name |Last Name|Other Id|License Expiry Date|Gender|Marital Status|Nationality|
      |Fiona1|M               |Pham     |112|2020-05-27              |Female|Married       |Vietnamese |
  Scenario: Verify ESS user cannot able to edit some certain fields on Personal Details
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on "Personal Details" on the left side
    And I click on "Edit" button
    Then "Employee Id","Driver's License Number","Date of Birth" can not be edited.