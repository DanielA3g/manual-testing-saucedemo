@bug @login @ux
Feature: Session timeout user message
  In order to provide a clear user experience
  As a system
  I want to display a friendly message when the user session expires

  Scenario: Confusing HTML path message after session timeout (BUG-0010)
    Given the user was previously logged in
    And the session has expired due to inactivity
    When the user refreshes the page or navigates to a protected area such as the cart
    Then the system should redirect to the login page with a friendly message like "Your session has expired. Please log in again."
    But currently the page shows "Epic sadface: You can only access '/cart.html' when you are logged in." (BUG)