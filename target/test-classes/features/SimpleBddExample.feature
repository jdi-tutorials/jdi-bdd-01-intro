@simple
Feature: Login and submit contact form

  Scenario: fill Contact Form from json
    When I open "https://jdi-testing.github.io/jdi-light/"
    When I click on "User Icon"
    And I login as "Roman"
    And I submit form "Login Form" with data:
      |name     | Roman   |
      |password | JDI1234 |
    Then the "User Name" is displayed
    When I open "https://jdi-testing.github.io/jdi-light/contacts.html"
    When I fill form "Contact Form" with data:
      |name|Roman|
      |lastName|Iovlev|
      |position|ChiefQA|
      |passportNumber|654321|
      |passportSeria|1234|
      |description|JDI - awesome UI automation tool|
      |acceptConditions|true|
      |gender|Female|
      |religion|Other|
    And click on "#contact-form [type=submit]"