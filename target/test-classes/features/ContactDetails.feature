@info
Feature: Contact Details
  Scenario: ESS use can view Contact Details page
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on "Contact Details" on the left side
    Then "Contact Details" page will be displayed
  Scenario: Verify ESS user can update Contact Details pages with valid data
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on "Contact Details" on the left side
    Then "Contact Details" page will be displayed
    When I click on "Edit" button
    And I type following valid data on the page
    |Address Street 1|Address Street 2|City|State/Province|Zip/Postal Code|Country|Home Telephone|Mobile|Work Telephone|Work Email|Other Email|
    |200 E MAIN ST|PHOENIX AZ 85103   |Phoenix|CA         |95123          |United States|44-90-8203-6421|44-90-8203-6422|44-90-8203-6422|fioqg@gmail.com|abc@gmail.com|
    And I click on "Save" button
    Then message "Successfully Saved" will be appeared

  Scenario Outline: Verify ESS user can not update Contact Details pages with invalid data
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on "Contact Details" on the left side
    Then "Contact Details" page will be displayed
    When I click on "Edit" button
    And I type "200 E MAIN ST" in "Address Street 1" field
    And I type "PHOENIX AZ 85103 " in "Address Street 2" field
    And I type "Phoenix" in "City" field
    And I type "CA" in "State/Province" field
    And I type "95123" in "Zip/Postal Code" field
    And I select "United States" in "Country" field
    And I type <home> in "Home Telephone" field
    And I type <mobile> in "Mobile" field
    And I type <work> in "Work Telephone" field
    And I type <wEmail> in "Work Email" field
    And I type <oEmail> in "Other Email" field
    And I click on "Save" button
    Then error message <err> will be appeared
    Examples:
     | home           | mobile             | work             | wEmail               | oEmail           | err              |
#     invalid Home Telephone
     | "abc" | "44-90-8203-6422"  | "44-90-8203-6423"  | "fioqg@gmail.com"  | "abc@gmail.com"  | "Allows numbers" |
#     invalid Mobile
     | "44-90-8203-6421" | "$#*$#"  | "44-90-8203-6423"  | "fioqg@gmail.com"  | "abc@gmail.com"  | "Allows numbers" |
#    invalid Work Telephone
     | "44-90-8203-6421" | "44-90-8203-6423"  | "----"  | "fioqg@gmail.com"  | "abc@gmail.com"  | "Allows numbers" |
#    invalid Work Email
     | "44-90-8203-6421" | "44-90-8203-6423"  | "44-90-8203-6423"  | "fdsfd"  | "abc@gmail.com"  | "Expected format" |
#    invalid Other Email
     | "44-90-8203-6421" | "44-90-8203-6423"  | "44-90-8203-6423"  | "fioqg@gmail.com"  | "sgd"  | "Expected format" |
