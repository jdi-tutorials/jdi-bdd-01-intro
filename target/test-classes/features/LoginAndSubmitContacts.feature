@smart
Feature: Login and submit contact form

  Scenario: fill Contact Form from json
    Given I'm on "Home Page"
    When I click on "User Icon"
    And I login as "Roman"
    Then the "User Name" is displayed
    When I open "Contacts Page"
    When I fill form "Contact Form" with "Roman Contacts"
    And click on "Submit Button"