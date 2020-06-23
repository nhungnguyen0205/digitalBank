@info
Feature: Photograph
  Scenario Outline: Verify that ESS user can upload photograph successfully
    Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
    When I type username "fiona"
    And I type pass "12345678"
    And I click on "LOGIN" button
    Then I wait some seconds
    When I click on "My Info" on the top menu
    And I click on Photo on the top left corner
    And I select photo <namePhoto>
    And I click on "Upload" button
    Then message <err> will be appeared
    Examples:
      | namePhoto                      | err                  |
      | "file_example_JPG_500kB.jpg" | "Successfully Uploaded" |
      | "file_example_JPG_1MB.jpg" | "Successfully Uploaded" |
      | "file_example_JPG_2500kB.jpg" | "Validation Failed" |
      | "file_example_GIF_500kB.gif" | "Successfully Uploaded" |
      | "file_example_GIF_1MB.gif" | "Successfully Uploaded" |
      | "file_example_GIF_3500kB.gif" | "Validation Failed" |
      | "file_example_PNG_500kB.png" | "Successfully Uploaded" |
      | "file_example_PNG_1MB.png" | "Successfully Uploaded" |
      | "file_example_PNG_2100kB.png" | "Validation Failed" |
      | "file_example_MP3_1MG.mp3" | "Validation Failed" |
      | "file_example_MP3_700KB.mp3" | "Failed to Save: File Type Not Allowed" |
      | "file_example_MP3_2MG.MP3" | "Validation Failed" |
    Scenario: Verify that ESS user can delete photograph successfully
      Given I open "https://opensource-demo.orangehrmlive.com/index.php/auth/login" page
      When I type username "fiona"
      And I type pass "12345678"
      And I click on "LOGIN" button
      When I click on "My Info" on the top menu
      Then I wait some seconds
      When I click on Photo on the top left corner
      And I click on "Delete" button
      Then popup "OrangeHRM - Confirmation Required" will be appeared
      When on popup, I click on "Ok" button
      Then I wait some seconds
      Then message "Successfully Deleted" will be appeared


    
