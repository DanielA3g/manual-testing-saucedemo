@cart @regression
Feature: Shopping Cart
  Purpose: Users can add, update, and remove products in the cart.

  Background:
    Given the user is logged in on the products page

  Scenario: Add a single item to the cart
    When the user adds the product "Sauce Labs Backpack" to the cart
    Then the cart badge should show "1"
    And the cart should contain "Sauce Labs Backpack"

  Scenario: Add the same item twice increases quantity
    When the user adds the product "Sauce Labs Backpack" to the cart
    And the user adds the product "Sauce Labs Backpack" to the cart
    Then the cart should show quantity "2" for "Sauce Labs Backpack"

  Scenario: Remove an item from the cart
    Given the cart contains "Sauce Labs Bike Light"
    When the user removes the product "Sauce Labs Bike Light" from the cart
    Then the cart should not list "Sauce Labs Bike Light"
