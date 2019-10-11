@simple
Feature: Login and submit contact form

  Scenario: fill Contact Form from json
    When I open "https://jdi-testing.github.io/jdi-light/"
    When I click on "#user-icon"
    And I submit form "Login Form" with data:
      |name     | Roman   |
      |password | Jdi1234 |
    Then the "#user-name" is displayed
    When I open "https://jdi-testing.github.io/jdi-light/contacts.html"
    And I fill form "Contact Form" with data:
      | Name              | Roman   |
      | Last Name         | Iovlev  |
      | Position          | ChiefQA |
      | Passport Number   | 654321  |
      | Passport Seria    | 1234    |
      | Description       | JDI - awesome UI automation tool|
    And click on "#contact-form [type=submit]"