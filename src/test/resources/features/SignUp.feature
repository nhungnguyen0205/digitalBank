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
  Scenario Outline: Verify that User cant sign up new account when Date of Birthday, SSN , Email has wrong format
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
    |"05-23-2020"|"465-99-7509"|"vctv1112@gmail.com"|"Vstv12345678"|"Vstv12345678" |"Date of Birth" |
    |"05/23/2020"|"gfdgdgdf"|"vctv101@gmail.com"|"Vstv12345678"|"Vstv12345678" |"Social Security Number" |
    |"05/23/2020"|"465-99-7509"|"vctv1013"|"Vstv12345678"|"Vstv12345678" |"Email" |
    |"05/23/2020"|"465-99-7509"|"vctv1013@gmail.com"|"12345678"|"Vstv12345678" |"Password" |
  Scenario Outline: Verify that user can not sign up successfully with bank Address, Locality,Region, Postal Code, Country, Home Phone
    Given I open page with url "http://dbankdemo.com/signup"
    When I select "Ms." from "Title" dropdown list
    And I type "Mia" on "First Name" field
    And I type "Covas" on "Last Name" field
    And I select "F" at "Gender" field
    And I type "05/11/1878" on "Date of Birth" field
    And I type "465-99-7009" on "Social Security Number" field
    And I type "vctv001@gmail.com" on "Email Address" field
    And I type "Vstv12345678" on "Password" field
    And I type "Vstv12345678" on "Confirm Password" field
    And I click on "Next" button
    Then I wait some minutes
    When I type <address> on "Address" field
    And I type <locality> on "Locality" field
    And I type <region> on "Region" field
    And I type <postalCode> on "Postal Code" field
    And I type <Country> on "Country" field
    And I type <homephone> on "Home Phone" field
    And I check on " Agree the terms and policy" field
    And I click on "Register" button
    Then I wait some minutes
    Then user can not move to next page because <fieldName> is empty
  Examples:
    |address|locality|region|postalCode|Country|homephone|fieldName|
    |""|"Internet City"|"CA"|"94302"|"US"|"(547) 392-5436"|"Address"|
    |"123 Digital Lane"|""|"CA"|"94302"|"US"|"(547) 392-5436"|"Locality"|
    |"123 Digital Lane"|"Internet City"|""|"94302"|"US"|"(547) 392-5436"|"Region"|
    |"123 Digital Lane"|"Internet City"|"CA"|""|"US"|"(547) 392-5436"|"Postal Code"|
    |"123 Digital Lane"|"Internet City"|"CA"|"94302"|""|"(547) 392-5436"|"Country"|
    |"123 Digital Lane"|"Internet City"|"CA"|"94302"|"US"|""|"Home Phone"|
   Scenario: Verify that user cant sign up if he doesn't check on "Agree the terms and policy" check box
     Given I open page with url "http://dbankdemo.com/signup"
     When I select "Ms." from "Title" dropdown list
     And I type "Mia" on "First Name" field
     And I type "Covas" on "Last Name" field
     And I select "F" at "Gender" field
     And I type "05/11/1878" on "Date of Birth" field
     And I type "465-99-7009" on "Social Security Number" field
     And I type "vctv001@gmail.com" on "Email Address" field
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
     And I click on "Register" button
     Then I wait some minutes
     Then user can not move to next page because "Agree the terms and policy" is not checked.
  Scenario Outline: Verify that user cant sign up with wrong phone format
    Given I open page with url "http://dbankdemo.com/signup"
    When I select "Ms." from "Title" dropdown list
    And I type "Mia" on "First Name" field
    And I type "Covas" on "Last Name" field
    And I select "F" at "Gender" field
    And I type "05/11/1878" on "Date of Birth" field
    And I type "465-99-7009" on "Social Security Number" field
    And I type "vctv001@gmail.com" on "Email Address" field
    And I type "Vstv12345678" on "Password" field
    And I type "Vstv12345678" on "Confirm Password" field
    And I click on "Next" button
    Then I wait some minutes
    When I type "123 Digital Lane" on "Address" field
    And I type "Internet City" on "Locality" field
    And I type "CA" on "Region" field
    And I type "94302" on "Postal Code" field
    And I type "US" on "Country" field
    And I type <homePhone> on "Home Phone" field
    And I type <mobilePhone> on "Mobile Phone" field
    And I type <workPhone> on "Work Phone" field
    And I click on "Register" button
    And I check on " Agree the terms and policy" field
    Then I wait some minutes
    Then error message about <field> format will be displayed.
  Examples:
    |homePhone|mobilePhone|workPhone|field|
    |"547392544"|"(547) 392-5436"|"(547) 392-5436"|"Home Phone"|