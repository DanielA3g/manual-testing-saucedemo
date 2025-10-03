# Bug Report – Login with invalid credentials

- **ID:** BUG-0001
- **Title:** Login allows access with incorrect password
- **Severity:** Critical
- **Priority:** High
- **Environment:** Chrome 140.0.7339.208, Windows 10
- **Preconditions:** User exists with username "standard_user"
- **Steps to Reproduce:**
  1. Navigate to https://www.saucedemo.com/
  2. Enter username "standard_user" and password "wrongpassword"
  3. Click on "Login"
- **Expected Result:** System should display error "Username and password do not match"
- **Actual Result:** User is logged in successfully
- **Attachments:** `screenshots/login_bug.png`
