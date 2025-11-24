# Test Cases – SauceDemo (Gherkin)

This folder contains all **manual test cases** for the SauceDemo application, written in **Gherkin (BDD) syntax**.  
The goal is to design clear and structured scenarios using the **Given – When – Then** format.

---

## Purpose

- Document application behavior in a readable and consistent format
- Facilitate future automation (Cucumber / Behave / PyTest-BDD)
- Provide complete coverage of critical functionality: Login, Cart, Checkout, Sorting, Logout, Accessibility

---

## Folder Contents

Each `.feature` file represents a functional area of the application:

| File                                   | Description                                       |
| -------------------------------------- | ------------------------------------------------- |
| `login.feature`                        | Scenarios for login validation and error handling |
| `cart.feature`                         | Adding, removing, and viewing items in the cart   |
| `checkout.feature`                     | Checkout form, validation, zip code behavior      |
| `Logout.feature`                       | Session termination and redirection behavior      |
| `product-sorting-filtering.feature`    | Sorting, filtering, and product listing behavior  |
| `error-messages-accessibility.feature` | UX, focus, and error visibility tests             |

---

## Gherkin Example

```gherkin
Scenario: Successful login with valid credentials
  Given the user is on the login page
  When the user enters a valid username and password
  And clicks "Login"
  Then the user should be redirected to the products page
```
