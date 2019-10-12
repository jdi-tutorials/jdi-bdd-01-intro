@smart
Feature: Login and submit contact form

  Scenario: fill Contact Form from json
    Given I'm on "Home Page"
    When I click on "User Icon"
    And I login as "Roman"
    Then the "User Name" is displayed
    When I open "Contacts Page"
    And I fill form "Contact Form" with "Roman Contacts"
    And click on "Submit Button"
    Then the "Last Name" text equals to "Iovlev"
    Then the "Description" text equals to "JDI - awesome UI automation tool"
    Then the "Description" attribute "rows" equals to "4"
    Then the "Submit Button" css "border-color" equals to "rgb(21, 124, 140)"