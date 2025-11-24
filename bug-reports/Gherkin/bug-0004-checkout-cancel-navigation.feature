@bug @checkout
Feature: Cancel button functionality
  In order to improve navigation and user control
  As a user
  I want the cancel button to return me to the cart page

  Scenario: Cancel button does not redirect to cart (BUG-0008)
    Given the user is on the checkout information page
    When the user clicks the "Cancel" button
    Then the user should be redirected to the cart page
    But currently its redirected to the homepage (BUG)