# Bug Report Checkout accept invalid zipcodes

- **ID:** BUG-003
- **Title:** Checkout allows non-numeric, letters and special characters as zipcodes
- **Severity:** Medium
- **Priority:** Medium
- **Environment:** Chrome 140.0.7339.208, Windows 10
- **Preconditions:** User has at least one item in the cart and is on the checkout information page

## Steps to Reproduce

1. Navigate to https://www.saucedemo.com/
2. Login with valid credentials
3. Add any product to the cart
4. Proceed to checkout
5. In the ZIP Code field, enter letters or special characters (e.g. “ABCDE”, “123AB”, “!!??”)
6. Click on “Continue”

## Expected Result

System should validate the zipcode field and display an error message such as "Please enter a valid zipcode"

## Actual Result

The checkout proccess continues successfully even when the zipcode contains invalid information

## Impact

This allows incorrect or non-existent ZIP Codes, which could cause order delivery or data validation issues.

## Attachments

- Screenshot: `screenshots/checkout-zipcode-bug.png`
