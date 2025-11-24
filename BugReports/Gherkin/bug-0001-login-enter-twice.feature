--------GHERKIN---------------
@bug @login
Feature: Login error box
  In order to inform users of invalid credentials
  As a user
  I want to read an error on every invalid login attempt regardless of focus

  Scenario: Error message missing on repeated Enter attempts inside password field (BUG-0001)
    Given the user is on the login page
    When the user enters invalid username "wronguser" and password "wrongpassword"
    And Presses Enter key twice consecutively
    Then the system should display "Username and password do not match" after each attempt
    But currently the error box do not show on the second attempt