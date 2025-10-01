@checkout @e2e
Feature: Checkout
  Purpose: Complete the purchase flow with valid customer data.

  Background:
    Given the user is logged in on the products page
    And the cart has at least one item

  Scenario: Successful checkout with valid data
    When the user proceeds to checkout
    And enters first name "Daniel", last name "Tress", and postal code "01100"
    And confirms the order
    Then the order confirmation message should be displayed
    And the cart should be empty

  Scenario Outline: Validation of missing mandatory fields
    When the user proceeds to checkout
    And enters first name "<first>", last name "<last>", and postal code "<zip>"
    And confirms the order
    Then an error message should be displayed containing "<expected>"

    Examples:
      | first  | last   | zip   | expected                    |
      |        | Tress  | 00000 | First Name is required      |
      | Daniel |        | 00000 | Last Name is required       |
      | Daniel | Tress  |       | Postal Code is required     |
