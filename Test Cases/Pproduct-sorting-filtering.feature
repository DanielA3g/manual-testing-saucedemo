@catalog @regression
Feature: Product Sorting and Filtering
  Purpose: Ensure users can sort and view products as expected.

  Background:
    Given the user is logged in on the products page

  Scenario: Sort products by price low to high
    When the user sorts products by "Price (low to high)"
    Then the first listed product price should be the lowest

  Scenario: Sort products by name A to Z
    When the user sorts products by "Name (A to Z)"
    Then the product list should be alphabetically ascending
