@bug @checkout
Feature: Zipcode Validation
  In order to ensure correct shipping and data accuracy
  As a system
  I want to validate that the ZIP Code field accepts only valid numeric inputs

 Scenario: Checkout accepts invalid ZIP Code input (BUG-0003)
    Given the user is logged in
    And has at least one product in the cart
    And is on the checkout information page
    When the user enters an invalid ZIP Code such as "AABBR" or "12AB!$@"
    And clicks "Continue"
    Then the system should display an error message like "Please enter a valid ZIP Code"
    But currently the system allows the user to proceed to the next step (BUG)