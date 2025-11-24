@auth @smoke @critical
Feature: Login
  Purpose: Allow valid users to sign in and show proper errors to invalid attempts.

  Background:
    Given the user is on the login page

  Scenario: Successful login with valid credentials
    When the user enters username "standard_user" and password "secret_sauce"
    And clicks the "Login" button
    Then the user should be redirected to the products page
    And the page title should be "Products"

  Scenario: Login with invalid credentials
    When the user enters username "wrong_user" and password "bad_pass"
    And clicks the "Login" button
    Then an error message should be displayed containing "do not match"

  @regression
  Scenario Outline: Login with empty fields validation
    When the user enters username "<user>" and password "<pass>"
    And clicks the "Login" button
    Then an error message should be displayed containing "<expected_message>"

    Examples:
      | user            | pass          | expected_message           |
      |                 |               | Username is required       |
      | standard_user   |               | Password is required       |
