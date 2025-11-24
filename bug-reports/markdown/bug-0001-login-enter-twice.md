# Bug Report – Login error message not displayed on repeated Enter attempts with invalid credentials

- **ID:** BUG-0001
- **Title:** Pressing key "Enter" twice with wrong credentials
- **Severity:** Low
- **Priority:** Low
- **Environment:** Chrome 140.0.7339.208, Windows 11
- **Preconditions:** User is on login page,inside the username or password field, wrong credentials
- **Steps to Reproduce:**
  1. Navigate to https://www.saucedemo.com/
  2. Enter username "wronguser" and password "wrongpassword"
  3. Keep the cursor focus inside the password input field
  4. Press "Enter key" twice consecutively
- **Expected Result:** "System should consistently display error message after each invalid login attempt"
- **Actual Result:** “Error message appears on the first attempt but not when Enter is pressed again”
- **Impact** "Could confuse users when retrying login attempts without changing crendetials."
- **Attachments:** `screenshots/repeated_attempts_login.png`
