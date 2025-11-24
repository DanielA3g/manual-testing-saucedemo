# Bug Report – Confusing error message after session timeout

- **ID:** BUG-0005
- **Title:** After session timeout, user sees a technical HTML path message instead of a friendly login prompt
- **Severity:** Medium
- **Priority:** Medium
- **Environment:** Chrome 140.0.7339.208, Windows 11
- **Preconditions:** User has previously logged in and left the session inactive for several minutes

## Steps to Reproduce

1. Login to https://www.saucedemo.com/ with valid credentials
2. Leave the page inactive for several minutes until the session expires or the system logs out automatically
3. Attempt to perform an action (e.g., refresh or navigate to cart)
4. Observe the error message displayed on the login page

## Expected Result

When the session expires, the system should redirect the user to the login page and show a clear, user-friendly message such as:

> _"Your session has expired. Please log in again to continue."_

## Actual Result

The page displays a technical message referencing an internal path:

> _"Epic sadface: You can only access '/cart.html' when you are logged in."_  
> This message includes an HTML reference (`/cart.html`) that may confuse non-technical users.

## Impact

- Confuses users who don’t understand technical paths.
- Poor UX communication after session timeout.
- May lead users to believe there’s a system error instead of a normal logout.

## Attachments

- Screenshot: `screenshots/login_session_timeout_message.png`
