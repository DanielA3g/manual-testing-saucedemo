# Manual QA Testing with Gherkin and Markdown – SauceDemo

This repository contains a manual testing project performed on the practice site SauceDemo
.
It demonstrates the ability to design, document, and organize manual test cases and bug reports using two industry-standard formats:

Gherkin (.feature) → Behavior-Driven Development (BDD)

Markdown (.md) → Traditional QA documentation

The goal of this project is to showcase QA practices for Login, Cart, Checkout, UX, Input Validation, and Session Handling.

## Repository Structure

```manual-testing-saucedemo/
│
├── test-cases/
│   ├── login.feature
│   ├── cart.feature
│   ├── checkout.feature
│   ├── Logout.feature
│   ├── product-sorting-filtering.feature
│   ├── error-messages-accessibility.feature
│   ├── ...
│   └── README.md
├── bug-reports/
│   ├── Gherkin/
│   │   ├── bug-0001-login-enter-twice.feature
│   │   ├── bug-0002-cart-quantity.feature
│   │   ├── bug-0003-zipcode-checkout.feature
│   │   ├── bug-0004-checkout-cancel-navigation.feature
│   │   ├── bug-0005-login-session-timeout-message.feature
│   │   └── ...
│   │
│   └── markdown/
│   │    ├── bug-0001-login-enter-twice.md
│   │    ├── bug-0002-cart-quantity.md
│   │    ├── bug-0003-zipcode-checkout.md
│   │    ├── bug-0004-checkout-cancel-navigation.md
│   │    ├── bug-0005-login-session-timeout-message.md
│   │    └── ...
│   └── README.md
├── screenshots/
│   ├── add_product_bug.png
│   ├── checkout-zipcode-bug.png
│   ├── login_session_timeout_message.png
│   ├── repeated_attempts_login.png
│   └── ...
│
└── README.md
```


 Test Case Design – Gherkin (BDD)

All test cases are written in Gherkin syntax and stored under /test-cases/.

Example:
```
Scenario: Successful login with valid credentials
  Given the user is on the login page
  When the user enters a valid username and password
  And clicks "Login"
  Then the user should be redirected to the products page
```

Gherkin provides readable, execution-ready scenarios that can later be automated using tools such as Behave, Cucumber, or PyTest-BDD.

## Bug Reporting – Markdown Format
 

All traditional bug reports are documented under:

BugReports/markdown/


Each bug includes:

Severity & Priority

1. Environment
2. Preconditions
3. Steps to reproduce
4. Expected vs actual result
5. Screenshot evidence

Example:

### Bug Report – Cart does not update quantity
```
- **ID:** BUG-0002
- **Title:** Cart prevents adding multiple units of the same product
- **Severity:** Medium
- **Priority:** High


# Steps to Reproduce
1. Login with valid user
2. Add "Sauce Labs Backpack" to the cart
3. Attempt to add the same item again

# Expected Result
User should be able to increase quantity (via a + button or selector).

# Actual Result
Only the "Remove" button appears, preventing adding more units.
```
## Bug Reporting – Gherkin Format

Each bug is also documented as a BDD scenario under:

BugReports/Gherkin/


Example:
```
@bug @cart
Scenario: Cannot add more than one unit of the same product (BUG-0002)
  Given the user is logged in
  And has added "Sauce Labs Backpack" to the cart
  When the user attempts to add the same product again
  Then the system should allow increasing the quantity
  But currently only the "Remove" button is shown
```


 ## Methodologies & Practices Used

- **Manual test case design**

- **Input validation testing**

- **UI/UX bug identification**

- **Boundary and negative testing**

- **Session handling/timeout testing**

- **Severity & priority classification**

- **Behavior-Driven Development (BDD) structure**

- **Agile QA practices**

## Bug ID Index (for quick reference)
```
Bug ID	Area	Description
0001	Login	Pressing Enter twice causes missing error message
0002	Cart	Cannot add more than one unit
0003	Checkout	Invalid ZIP allowed
0004	Checkout	Cancel button does not navigate correctly
0005	Login/Session	Confusing session timeout message
...	(More coming)
```	
## Evidence

All screenshots referenced in bug reports are stored in:

/Screenshots/


Each file is named after the corresponding bug to maintain consistency.


