@ux @a11y
Feature: Error Messages & Basic Accessibility
  Purpose: Errors are clear and basic accessibility cues exist.

  Background:
    Given the user is on the login page

  Scenario: Error message is visible and descriptive
    When the user clicks the "Login" button without entering credentials
    Then an error alert should be visible with text containing "required"

  Scenario: Focus moves to the first invalid field
    When the user clicks the "Login" button without entering credentials
    Then the focus should be on the username field
