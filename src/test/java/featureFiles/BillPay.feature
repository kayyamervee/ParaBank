Feature: Bill Pay Functionality

  Background:
    Given Navigate to the ParaBank website
    When Enter username and password and click login button
    Then User should login successfully

  Scenario Outline: Enter Payee information to Bill Pay form
    When The user clicks on the Bill Pay Button
    And  The user types the name as "<payeeName>" in Payee Name box
    When The user fills in the Billing Information in the customer data
    Then The user displays the successful pay message
    When The user navigates to the Accounts Overview
    Then The user verifies the Transaction ID from Account Activity

    Examples:
      | payeeName        |
      | Electricity Bill |
      | Water Bill       |
      | Natural Gas Bill |


