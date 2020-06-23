@info
Feature: Emergency Contact
  Scenario: Ess user can view  Emergency Contact when he click on Emergency Contact on the left menu
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on "Emergency Contacts" on the left side
    Then "Emergency Contacts" page will be displayed
  Scenario: Ess user can add successfully Emergency Contact with valid data
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on "Emergency Contacts" on the left side
    And I click on "Add" button
    And I type "lisa" in "Name" field
    And I type "Spouse" in "Relationship" field
    And I type "1234567" in "Home Telephone" field
    And I type "12345678" in "Mobile" field
    And I type "12345688" in "Work Telephone" field
    And I click on "Save" button
    Then message "Successfully Saved" will be appeared
  Scenario Outline: Ess user can not add Emergency Contact with invalid data
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on "Emergency Contacts" on the left side
    And I click on "Add" button
    And I type <nameValue> in "Name" field
    And I type <relationshipValue> in "Relationship" field
    And I type <homephoneValue> in "Home Telephone" field
    And I type <mobileValue> in "Mobile" field
    And I type <workValue> in "Work Telephone" field
    And I click on "Save" button
   Then error message <err> will be appeared
    Examples:
      | nameValue   | relationshipValue      | homephoneValue      | mobileValue      | workValue    | err   |
      | " " | "Spouse" | "1234567" | "12345678" | "12345688"  | "Required" |
      | "Nany" | " " | "1234567" | "12345678" | "12345688"  | "Required" |
      | "Nany" | "Spouse" | "" | "" | ""  | "At least one phone number is required" |
      | "Nany" | "Spouse" | "fbdnbf" | "" | ""  | "Allows numbers" |
      | "Nany" | "Spouse" | "" | "dsfkjf" | ""  | "Allows numbers" |
      | "Nany" | "Spouse" | "" | "" | "ffdfd"  | "Allows numbers" |
  Scenario: ESS user can add multiple Emergency Contact
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on "Emergency Contacts" on the left side
    Then I can add 5 records with name "Lisa" in "Emergency Contacts" page
   Scenario: ESS user can delete record in Emergency Contact
     Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
     When I type username "fiona"
     And I type pass "12345678"
     And I click on "LOGIN" button
     Then I wait some seconds
     When I click on "My Info" on the top menu
     And I click on "Emergency Contacts" on the left side
     And I click on "Add" button
     And I type "Nancy" in "Name" field
     And I type "Spouse" in "Relationship" field
     And I type "1234567" in "Home Telephone" field
     And I type "12345678" in "Mobile" field
     And I type "12345688" in "Work Telephone" field
     And I click on "Save" button
     And I check on "Nancy" record
     And I click on "Delete" button
     Then message "Successfully Deleted" will be appeared
  Scenario: ESS user can delete multiple records in Emergency Contact
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on "Emergency Contacts" on the left side
    And I can add 5 records with name "Mia" in "Emergency Contacts" page
    And I check on 3 records with name "Mia" that I have just created
    And I click on "Delete" button
    Then message "Successfully Deleted" will be appeared
    
