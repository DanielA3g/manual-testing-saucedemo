@bug @cart
Feature: Cart Item Quantity
  In order to purchase multiple units
  As a customer
  want to add more than one unit of a product to the cart

  Scenario: Cannot add more than one unit of the same product (BUG-0002)
    Given the user is logged in
    And the user has added "Sauce Labs Backpack" to the cart
    When the user tries to add the same product again
    Then the system should allow increasing the quantity
    But currently the "Add to cart" button is replaced with "Remove" (BUG)