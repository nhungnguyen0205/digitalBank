Feature: SignUp new account
  Scenario: Verify that user can signup new account with valid data successfully
    Given I open page with url "http://dbankdemo.com/signup"
    When I select "Ms." from "Title" dropdown list
    And I type "Mia" on "First Name" field
    And I type "Covas" on "Last Name" field
    And I select "F" at "Gender" field
    And I type "05/11/1878" on "Date of Birth" field
    And I type "465-99-7509" on "Social Security Number" field
    And I type "vctv1112@gmail.com" on "Email Address" field
    And I type "Vstv12345678" on "Password" field
    And I type "Vstv12345678" on "Confirm Password" field
    And I click on "Next" button
    Then I wait some minutes
    When I type "123 Digital Lane" on "Address" field
    And I type "Internet City" on "Locality" field
    And I type "CA" on "Region" field
    And I type "94302" on "Postal Code" field
    And I type "US" on "Country" field
      And I type "(547) 392-5436" on "Home Phone" field
    And I check on " Agree the terms and policy" field
    And I click on "Register" button
    Then I wait some minutes
    Then message "Registration Successful. Please Login" will be displayed.
  Scenario Outline: Verify that user can't sign up new account with empty title account
    Given I open page with url "http://dbankdemo.com/signup"
    When I select <titleValue> from "Title" dropdown list
    And I type <firstNamValue> on "First Name" field
    And I type <lastNameValue> on "Last Name" field
    And I select <genderValue> at "Gender" field
    And I type <dobValue> on "Date of Birth" field
    And I type <ssnValue> on "Social Security Number" field
    And I type <email> on "Email Address" field
    And I type <pass> on "Password" field
    And I type <confirmPass> on "Confirm Password" field
    And I click on "Next" button
    Then I wait some minutes
    Then user can not move to next page because Title field is empty
    Examples:
    |titleValue|firstNamValue|lastNameValue|genderValue|dobValue|ssnValue|email|pass|confirmPass|
    |"Please select"     |"Mia"        |"Covas"      |"F"        |"05/11/1878"|"465-99-7509"|"vctv1112@gmail.com"|"Vstv12345678"|"Vstv12345678"|

  Scenario Outline: Verify that user can't sign up new account with empty First Name,Last Name, Date of Birth, Social Security Number, Email, Password, Confirm Password
    Given I open page with url "http://dbankdemo.com/signup"
    When I select <titleValue> from "Title" dropdown list
    And I type <firstNamValue> on "First Name" field
    And I type <lastNameValue> on "Last Name" field
    And I select <genderValue> at "Gender" field
    And I type <dobValue> on "Date of Birth" field
    And I type <ssnValue> on "Social Security Number" field
    And I type <email> on "Email Address" field
    And I type <pass> on "Password" field
    And I type <confirmPass> on "Confirm Password" field
    And I click on "Next" button
    Then I wait some minutes
    Then user can not move to next page because <field> is empty
    Examples:
      |titleValue|firstNamValue|lastNameValue|genderValue|dobValue|ssnValue|email|pass|confirmPass|field|
      |"Ms."     |""        |"Covas"      |"F"        |"05/11/1878"|"465-99-7509"|"vctv1112@gmail.com"|"Vstv12345678"|"Vstv12345678"|"First Name"|
      |"Ms."     |"Mia"        |""      |"F"        |"05/11/1878"|"465-99-7509"|"vctv1112@gmail.com"|"Vstv12345678"|"Vstv12345678"|"Last Name"|
      |"Ms."     |"Mia"        |"Covas"      |"F"        |""|"465-99-7509"|"vctv1112@gmail.com"|"Vstv12345678"|"Vstv12345678"|"Date of Birth"|
      |"Ms."     |"Mia"        |"Covas"      |"F"        |"05/11/1878"|""|"vctv1112@gmail.com"|"Vstv12345678"|"Vstv12345678"|"Social Security Number"|
      |"Ms."     |"Mia"        |"Covas"      |"F"        |"05/11/1878"|"465-99-7509"|""|"Vstv12345678"|"Vstv12345678"|"Email"|
      |"Ms."     |"Mia"        |"Covas"      |"F"        |"05/11/1878"|"465-99-7509"|"vctv1112@gmail.com"|""|"Vstv12345678"|"Password"|
      |"Ms."     |"Mia"        |"Covas"      |"F"        |"05/11/1878"|"465-99-7509"|"vctv1112@gmail.com"|"Vstv1234567"|""|"Confirm Password"|
  Scenario: Verify that user can't sign up new account with not select Gender
    Given I open page with url "http://dbankdemo.com/signup"
    When I select "Ms." from "Title" dropdown list
    And I type "Mia" on "First Name" field
    And I type "Covas" on "Last Name" field
    And I type "05/11/1878" on "Date of Birth" field
    And I type "465-99-7509" on "Social Security Number" field
    And I type "vctv1112@gmail.com" on "Email Address" field
    And I type "Vstv12345678" on "Password" field
    And I type "Vstv12345678" on "Confirm Password" field
    And I click on "Next" button
    Then I wait some minutes
    Then user can not move to next page because Gender is empty
  Scenario: Verify that User cant sign up new account with SSN which is used before
    Given I open page with url "http://dbankdemo.com/signup"
    When I select "Ms." from "Title" dropdown list
    And I type "Mia" on "First Name" field
    And I type "Covas" on "Last Name" field
    And I select "F" at "Gender" field
    And I type "05/11/1878" on "Date of Birth" field
    And I type "465-99-7509" on "Social Security Number" field
    And I type "vctv1112@gmail.com" on "Email Address" field
    And I type "Vstv12345678" on "Password" field
    And I type "Vstv12345678" on "Confirm Password" field
    And I click on "Next" button
    Then I wait some minutes
    Then error message "An account is already registered with the Social Security Number provided" will be displayed.
  Scenario Outline: Verify that User cant sign up new account when Date of Birthday has wrong format
    Given I open page with url "http://dbankdemo.com/signup"
    When I select "Ms." from "Title" dropdown list
    And I type "Mia" on "First Name" field
    And I type "Covas" on "Last Name" field
    And I select "F" at "Gender" field
    And I type <date> on "Date of Birth" field
    And I type <social> on "Social Security Number" field
    And I type <email> on "Email Address" field
    And I type <pass> on "Password" field
    And I type <confirmPass> on "Confirm Password" field
    And I click on "Next" button
    Then I wait some minutes
    Then error message about <mess> format will be displayed.
    Examples:
    |date|social|email|pass|confirmPass|mess|
#    |"05-23-2020"|"465-99-7509"|"vctv1112@gmail.com"|"Vstv12345678"|"Vstv12345678" |"Date of Birth" |
    |"05/23/2020"|"gfdgdgdf"|"vctv101@gmail.com"|"Vstv12345678"|"Vstv12345678" |"Social Security Number" |
