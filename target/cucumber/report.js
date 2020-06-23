$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/features/AddEmployee.feature");
formatter.feature({
  "name": "Create employees",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@Initialization"
    }
  ]
});
formatter.scenario({
  "name": "Create employee",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@Initialization"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "I open \"https://opensource-demo.orangehrmlive.com/index.php/auth/login\" page",
  "keyword": "Given "
});
formatter.match({
  "location": "EssLogin.iOpenPage(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type username \"admin\"",
  "keyword": "When "
});
formatter.match({
  "location": "EssLogin.iTypeUsername(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type pass \"admin123\"",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iTypePass(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"LOGIN\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I focus mouse on \"PIM\"",
  "keyword": "When "
});
formatter.match({
  "location": "AddEmployee.iFocusMouseOn(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Add Employee\" on SubMenu",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iClickOnOnSubMenu(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"Fiona\" in \"First Name\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"Canvas\" in \"Last Name\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I check on \"Create Login Details\" checkbox",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iCheckOnCheckbox(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"Fiona\" in \"User Name\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"12345678\" in \"Password\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"12345678\" in \"Confirm Password\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Save\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "\"Personal Details\" page will be displayed",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.pageWillBeDisplayed(String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenarioOutline({
  "name": "Add Leave Entitlement for employee by admin",
  "description": "",
  "keyword": "Scenario Outline"
});
formatter.step({
  "name": "I open \"https://opensource-demo.orangehrmlive.com/index.php/auth/login\" page",
  "keyword": "Given "
});
formatter.step({
  "name": "I type username \"admin\"",
  "keyword": "When "
});
formatter.step({
  "name": "I type pass \"admin123\"",
  "keyword": "And "
});
formatter.step({
  "name": "I click on \"LOGIN\" button",
  "keyword": "And "
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.step({
  "name": "I focus mouse on \"Leave\"",
  "keyword": "When "
});
formatter.step({
  "name": "I focus mouse on \"Entitlements\"",
  "keyword": "And "
});
formatter.step({
  "name": "I click on \"Add Entitlements\" on SubMenu",
  "keyword": "And "
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.step({
  "name": "I type \"Fiona Canvas\" in \"Employee \" field",
  "keyword": "When "
});
formatter.step({
  "name": "At \"Employee \", I press enter on my keyboard",
  "keyword": "And "
});
formatter.step({
  "name": "I select \u003cleaveTypeValue\u003e in \"Leave Type\" field",
  "keyword": "And "
});
formatter.step({
  "name": "I type \u003cleaveAmountValue\u003e in \"Entitlement\" field",
  "keyword": "And "
});
formatter.step({
  "name": "I click on \"Save\" button",
  "keyword": "And "
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.step({
  "name": "message \"Successfully Added\" will be appeared",
  "keyword": "Then "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "leaveTypeValue",
        "leaveAmountValue"
      ]
    },
    {
      "cells": [
        "\"Vacation US\"",
        "\"12\""
      ]
    },
    {
      "cells": [
        "\"Maternity US\"",
        "\"5\""
      ]
    },
    {
      "cells": [
        "\"Paternity US\"",
        "\"4\""
      ]
    }
  ]
});
formatter.scenario({
  "name": "Add Leave Entitlement for employee by admin",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@Initialization"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "I open \"https://opensource-demo.orangehrmlive.com/index.php/auth/login\" page",
  "keyword": "Given "
});
formatter.match({
  "location": "EssLogin.iOpenPage(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type username \"admin\"",
  "keyword": "When "
});
formatter.match({
  "location": "EssLogin.iTypeUsername(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type pass \"admin123\"",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iTypePass(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"LOGIN\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I focus mouse on \"Leave\"",
  "keyword": "When "
});
formatter.match({
  "location": "AddEmployee.iFocusMouseOn(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I focus mouse on \"Entitlements\"",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iFocusMouseOn(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Add Entitlements\" on SubMenu",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iClickOnOnSubMenu(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"Fiona Canvas\" in \"Employee \" field",
  "keyword": "When "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "At \"Employee \", I press enter on my keyboard",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.atIPressEnterOnMyKeyboard(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I select \"Vacation US\" in \"Leave Type\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iSelectInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"12\" in \"Entitlement\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Save\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "message \"Successfully Added\" will be appeared",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.MessageWillBeAppeared(String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Add Leave Entitlement for employee by admin",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@Initialization"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "I open \"https://opensource-demo.orangehrmlive.com/index.php/auth/login\" page",
  "keyword": "Given "
});
formatter.match({
  "location": "EssLogin.iOpenPage(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type username \"admin\"",
  "keyword": "When "
});
formatter.match({
  "location": "EssLogin.iTypeUsername(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type pass \"admin123\"",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iTypePass(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"LOGIN\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I focus mouse on \"Leave\"",
  "keyword": "When "
});
formatter.match({
  "location": "AddEmployee.iFocusMouseOn(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I focus mouse on \"Entitlements\"",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iFocusMouseOn(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Add Entitlements\" on SubMenu",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iClickOnOnSubMenu(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"Fiona Canvas\" in \"Employee \" field",
  "keyword": "When "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "At \"Employee \", I press enter on my keyboard",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.atIPressEnterOnMyKeyboard(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I select \"Maternity US\" in \"Leave Type\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iSelectInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"5\" in \"Entitlement\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Save\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "message \"Successfully Added\" will be appeared",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.MessageWillBeAppeared(String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Add Leave Entitlement for employee by admin",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@Initialization"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "I open \"https://opensource-demo.orangehrmlive.com/index.php/auth/login\" page",
  "keyword": "Given "
});
formatter.match({
  "location": "EssLogin.iOpenPage(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type username \"admin\"",
  "keyword": "When "
});
formatter.match({
  "location": "EssLogin.iTypeUsername(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type pass \"admin123\"",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iTypePass(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"LOGIN\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I focus mouse on \"Leave\"",
  "keyword": "When "
});
formatter.match({
  "location": "AddEmployee.iFocusMouseOn(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I focus mouse on \"Entitlements\"",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iFocusMouseOn(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Add Entitlements\" on SubMenu",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iClickOnOnSubMenu(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"Fiona Canvas\" in \"Employee \" field",
  "keyword": "When "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "At \"Employee \", I press enter on my keyboard",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.atIPressEnterOnMyKeyboard(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I select \"Paternity US\" in \"Leave Type\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iSelectInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"4\" in \"Entitlement\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Save\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "message \"Successfully Added\" will be appeared",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.MessageWillBeAppeared(String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.uri("file:src/test/resources/features/ApplyLeave.feature");
formatter.feature({
  "name": "Apply Leave",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@leave"
    }
  ]
});
formatter.scenarioOutline({
  "name": "Verify that ESS can apply leave Full Day with valid data",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@Initialization"
    }
  ]
});
formatter.step({
  "name": "I open \"https://opensource-demo.orangehrmlive.com/index.php/auth/login\" page",
  "keyword": "Given "
});
formatter.step({
  "name": "I type username \"fiona\"",
  "keyword": "When "
});
formatter.step({
  "name": "I type pass \"12345678\"",
  "keyword": "And "
});
formatter.step({
  "name": "I click on \"LOGIN\" button",
  "keyword": "And "
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.step({
  "name": "I focus mouse on \"Leave\"",
  "keyword": "When "
});
formatter.step({
  "name": "I click on \"Apply\" on SubMenu",
  "keyword": "And "
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "And "
});
formatter.step({
  "name": "I select \u003cleaveTypeValue\u003e in \"Leave Type\" field",
  "keyword": "And "
});
formatter.step({
  "name": "I type \u003cstartDate\u003e in \"From Date\" field",
  "keyword": "And "
});
formatter.step({
  "name": "I type \u003cendDate\u003e in \"To Date\" field",
  "keyword": "And "
});
formatter.step({
  "name": "At \"To Date\", I press enter on my keyboard",
  "keyword": "And "
});
formatter.step({
  "name": "I select \u003cdurationValue\u003e in \"Duration\" field",
  "keyword": "And "
});
formatter.step({
  "name": "I click on \"Apply\" button",
  "keyword": "And "
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "And "
});
formatter.step({
  "name": "I click on \"My Leave\" on SubMenu",
  "keyword": "And "
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.step({
  "name": "new record will be added in \"My Leave\" page with data:\"2020-06-25\" in \"Date\", \"Vacation US\" in \"Leave Type\", \"11.00\" in \"Leave Balance\", \"8.00\" in \"Number of Hours\", and \"Pending Approval\" in \"Status\".",
  "keyword": "Then "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "leaveTypeValue",
        "startDate",
        "endDate",
        "durationValue"
      ]
    },
    {
      "cells": [
        "\"Vacation US\"",
        "\"2020-06-25\"",
        "\"2020-06-25\"",
        "\"Full Day\""
      ]
    }
  ]
});
formatter.scenario({
  "name": "Verify that ESS can apply leave Full Day with valid data",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@leave"
    },
    {
      "name": "@Initialization"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "I open \"https://opensource-demo.orangehrmlive.com/index.php/auth/login\" page",
  "keyword": "Given "
});
formatter.match({
  "location": "EssLogin.iOpenPage(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type username \"fiona\"",
  "keyword": "When "
});
formatter.match({
  "location": "EssLogin.iTypeUsername(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type pass \"12345678\"",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iTypePass(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"LOGIN\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I focus mouse on \"Leave\"",
  "keyword": "When "
});
formatter.match({
  "location": "AddEmployee.iFocusMouseOn(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Apply\" on SubMenu",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iClickOnOnSubMenu(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I select \"Vacation US\" in \"Leave Type\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iSelectInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"2020-06-25\" in \"From Date\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"2020-06-25\" in \"To Date\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "At \"To Date\", I press enter on my keyboard",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.atIPressEnterOnMyKeyboard(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I select \"Full Day\" in \"Duration\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iSelectInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Apply\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"My Leave\" on SubMenu",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iClickOnOnSubMenu(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "new record will be added in \"My Leave\" page with data:\"2020-06-25\" in \"Date\", \"Vacation US\" in \"Leave Type\", \"11.00\" in \"Leave Balance\", \"8.00\" in \"Number of Hours\", and \"Pending Approval\" in \"Status\".",
  "keyword": "Then "
});
formatter.match({
  "location": "ApplyLeave.newRecordWillBeAddedInPageWithDataInInInInAndIn(String,String,String,String,String,String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenarioOutline({
  "name": "Verify that ESS can apply leave Haft Day with valid data",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@Initialization"
    }
  ]
});
formatter.step({
  "name": "I open \"https://opensource-demo.orangehrmlive.com/index.php/auth/login\" page",
  "keyword": "Given "
});
formatter.step({
  "name": "I type username \"fiona\"",
  "keyword": "When "
});
formatter.step({
  "name": "I type pass \"12345678\"",
  "keyword": "And "
});
formatter.step({
  "name": "I click on \"LOGIN\" button",
  "keyword": "And "
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.step({
  "name": "I focus mouse on \"Leave\"",
  "keyword": "When "
});
formatter.step({
  "name": "I click on \"Apply\" on SubMenu",
  "keyword": "And "
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "And "
});
formatter.step({
  "name": "I select \u003cleaveTypeValue\u003e in \"Leave Type\" field",
  "keyword": "And "
});
formatter.step({
  "name": "I type \u003cstartDate\u003e in \"From Date\" field",
  "keyword": "And "
});
formatter.step({
  "name": "I type \u003cendDate\u003e in \"To Date\" field",
  "keyword": "And "
});
formatter.step({
  "name": "At \"To Date\", I press enter on my keyboard",
  "keyword": "And "
});
formatter.step({
  "name": "I select \u003cdurationValue\u003e in \"Duration\" field",
  "keyword": "And "
});
formatter.step({
  "name": "I click on \"Apply\" button",
  "keyword": "And "
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "And "
});
formatter.step({
  "name": "I click on \"My Leave\" on SubMenu",
  "keyword": "And "
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.step({
  "name": "new record will be added in \"My Leave\" page with data:\"2020-06-22 (09:00 - 13:00) Half Day\" in \"Date\", \"Paternity US\" in \"Leave Type\", \"3.50\" in \"Leave Balance\", \"4.00\" in \"Number of Hours\", and \"Pending Approval\" in \"Status\".",
  "keyword": "Then "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "leaveTypeValue",
        "startDate",
        "endDate",
        "durationValue"
      ]
    },
    {
      "cells": [
        "\"Paternity US\"",
        "\"2020-06-22\"",
        "\"2020-06-22\"",
        "\"Half Day\""
      ]
    }
  ]
});
formatter.scenario({
  "name": "Verify that ESS can apply leave Haft Day with valid data",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@leave"
    },
    {
      "name": "@Initialization"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "I open \"https://opensource-demo.orangehrmlive.com/index.php/auth/login\" page",
  "keyword": "Given "
});
formatter.match({
  "location": "EssLogin.iOpenPage(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type username \"fiona\"",
  "keyword": "When "
});
formatter.match({
  "location": "EssLogin.iTypeUsername(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type pass \"12345678\"",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iTypePass(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"LOGIN\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I focus mouse on \"Leave\"",
  "keyword": "When "
});
formatter.match({
  "location": "AddEmployee.iFocusMouseOn(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Apply\" on SubMenu",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iClickOnOnSubMenu(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I select \"Paternity US\" in \"Leave Type\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iSelectInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"2020-06-22\" in \"From Date\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"2020-06-22\" in \"To Date\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "At \"To Date\", I press enter on my keyboard",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.atIPressEnterOnMyKeyboard(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I select \"Half Day\" in \"Duration\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iSelectInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Apply\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"My Leave\" on SubMenu",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iClickOnOnSubMenu(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "new record will be added in \"My Leave\" page with data:\"2020-06-22 (09:00 - 13:00) Half Day\" in \"Date\", \"Paternity US\" in \"Leave Type\", \"3.50\" in \"Leave Balance\", \"4.00\" in \"Number of Hours\", and \"Pending Approval\" in \"Status\".",
  "keyword": "Then "
});
formatter.match({
  "location": "ApplyLeave.newRecordWillBeAddedInPageWithDataInInInInAndIn(String,String,String,String,String,String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Verify that ESS can apply leave specify time with valid data",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@leave"
    },
    {
      "name": "@Initialization"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "I open \"https://opensource-demo.orangehrmlive.com/index.php/auth/login\" page",
  "keyword": "Given "
});
formatter.match({
  "location": "EssLogin.iOpenPage(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type username \"fiona\"",
  "keyword": "When "
});
formatter.match({
  "location": "EssLogin.iTypeUsername(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type pass \"12345678\"",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iTypePass(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"LOGIN\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "Then "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I focus mouse on \"Leave\"",
  "keyword": "When "
});
formatter.match({
  "location": "AddEmployee.iFocusMouseOn(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Apply\" on SubMenu",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iClickOnOnSubMenu(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I select \"Maternity US\" in \"Leave Type\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iSelectInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"2020-06-29\" in \"From Date\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"2020-06-29\" in \"To Date\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iTypeInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "At \"To Date\", I press enter on my keyboard",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.atIPressEnterOnMyKeyboard(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I select \"Specify Time\" in \"Duration\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iSelectInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I select \"09:00\" in \"From\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iSelectInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I select \"11:30\" in \"To\" field",
  "keyword": "And "
});
formatter.match({
  "location": "ContactDetails.iSelectInField(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"Apply\" button",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iClickOnButton(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait some seconds",
  "keyword": "And "
});
formatter.match({
  "location": "EssLogin.iWaitMinutes()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on \"My Leave\" on SubMenu",
  "keyword": "And "
});
formatter.match({
  "location": "AddEmployee.iClickOnOnSubMenu(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "new record will be added in \"My Leave\" page with data:\"2020-06-29 (09:00 - 11:30)\" in \"Date\", \"Maternity US\" in \"Leave Type\", \"4.69\" in \"Leave Balance\", \"2.50\" in \"Number of Hours\", and \"Pending Approval\" in \"Status\".",
  "keyword": "Then "
});
formatter.match({
  "location": "ApplyLeave.newRecordWillBeAddedInPageWithDataInInInInAndIn(String,String,String,String,String,String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
});