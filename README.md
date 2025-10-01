# manual-testing-saucedemo
Manual QA testing project using SauceDemo. Includes test cases in Gherkin syntax (Given–When–Then) for login, cart, and checkout, plus detailed bug reports with severity/priority. Demonstrates QA documentation and BDD practices.



# Manual QA Testing with Gherkin – SauceDemo

This repository contains a **manual testing project** carried out on the practice site [SauceDemo](https://www.saucedemo.com/).  
The main goal is to demonstrate the ability to **design, document, and organize manual test cases** using industry standards such as **BDD (Behavior-Driven Development)** with **Gherkin syntax**.

## Repository Structure
- **/test-cases/** → `.feature` files with test scenarios written in Gherkin (login, cart, checkout).  
- **/bug-reports/** → Bug reports in Markdown format, including severity, priority, reproduction steps, and evidence.  
- **/screenshots/** → Screenshots showing defects or test evidence.  

## Methodologies & Practices
- Manual Test Case Design  
- Test Documentation in **Gherkin syntax (Given–When–Then)**  
- Bug Reporting (with severity and priority classification)  
- QA best practices aligned with Agile/BDD  

## Example in Gherkin
```gherkin
Scenario: Successful login with valid credentials
  Given the user is on the login page
  When the user enters a valid username and password
  And clicks on the "Login" button
  Then the user should be redirected to the products page
