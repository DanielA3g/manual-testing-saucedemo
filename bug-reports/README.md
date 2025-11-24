# 🐞 Bug Reports – SauceDemo (Markdown + Gherkin)

This directory contains all **bug reports** identified during manual testing of the SauceDemo application.  
Bugs are documented in **two complementary formats**:

- **Markdown (`.md`)** → Classic QA documentation
- **Gherkin (`.feature`)** → BDD-style bug scenarios

---

## Purpose

- Document functional, UX, validation, and session-handling defects
- Provide clear reproducibility via structured steps
- Offer both **human-readable** and **BDD-ready** bug reporting formats
- Support future automation or regression testing

---

# Folder Structure

bug-reports/
│
├── markdown/
│ ├── bug-0001-login-enter-twice.md
│ ├── bug-0002-cart-quantity.md
│ ├── bug-0003-zipcode-checkout.md
│ ├── bug-0004-checkout-cancel-navigation.md
│ ├── bug-0005-session-timeout-message.md
│ └── ...
│
└── gherkin/
├── bug-0001-login-enter-twice.feature
├── bug-0002-cart-quantity.feature
├── bug-0003-zipcode-checkout.feature
├── bug-0004-checkout-cancel-navigation.feature
├── bug-0005-session-timeout-message.feature
└── ...

---

Markdown Bug Report Format

Every report includes:

- Bug ID
- Title
- Severity & Priority
- Environment
- Preconditions
- Steps to reproduce
- Expected vs Actual result
- Screenshot

Example:

```markdown
# Bug Report – Cart does not update quantity

- **ID:** BUG-0002
- **Severity:** Medium
- **Priority:** High
- **Environment:** Chrome 140.0, Windows 11

## Steps

1. Login with a valid user
2. Add an item to cart
3. Try adding the same item again

## Expected

Quantity should increase.

## Actual

Only the “Remove” button appears.

# Gherkin Bug Scenario Format

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
# Bug Naming Convention

## Markdown format:

bug-<ID>-<short-description>.md

## Gherkin format:

bug-<ID>-<short-description>.feature

## Examples:

- bug-0001-login-enter-twice.md

- bug-0001-login-enter-twice.feature

# Evidence
Screenshots referenced in bug reports are stored in:

/screenshots/
```
