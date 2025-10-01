@auth @session
Feature: Session & Logout
  Purpose: Ensure sessions are handled correctly and logout works.

  Background:
    Given the user is logged in on the products page

  Scenario: Successful logout
    When the user opens the menu
    And clicks "Logout"
    Then the user should be redirected to the login page
    And no session data should persist

  Scenario: Access protected page after logout
    Given the user has logged out
    When the user attempts to access the products page directly
    Then the login page should be displayed
