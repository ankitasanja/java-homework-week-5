Feature: Nopcommerce Registration


  Background: I am on Nopcommerce registration page
   Given      I open the google chrome browser
   When       I open the Url https://demo.nopcommerce.com/register
   Then       I am on Nopcommerce registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When      I enter first name "<first name>"
    And       I enter last name "<last name>"
    And       I enter email address "<email>"
    And       I enter password "<password>"
    And       I enter confirm password "<confirm password>"
    And       Click on register button
    Then      I can see an error message "<error message>"
    And       I am not able to register

    Examples:
       |first name|last name|email           |password|confirm password|error message                             |
       |""        |sharma   |sharma@gmail.com|123456  |123456          |please enter first name                   |
       |Ria       |""       |sharma@gmail.com|123456  |123456          |please enter last name                    |
       |Ria       |sharma   |""              |123456  |123456          |please enter valid email                  |
       |Ria       |sharma   |sharma@gmail.com|""      |123456          |password is required                      |
       |Ria       |sharma   |sharma@gmail.com|123456  |""              |confirm password is required              |
       |Ria       |sharma   |sharma@gmail.com|123456  |12345           |password and confirm password do not match|
       |Ria       |sharma   |sharma@gmail.com|12345   |""              |minimum 6 character password is required  |
       |""        | ""      |""              |""      |""              | ""                                       |

  Scenario:   I should be able to select any one radio button from gender label of your personal details section
    Given     I am on gender label of your personal detail section
    When      I select "male" radio button
    And       I select "female" radio button
    Then      I am able to select any one of the radio button

 Scenario Outline:  I should be able to select day, month and year from drop down list of date of birth field
   Given      I am on date of birth field of your personal detail section
   When       I select day "<day>"
   And        I select month "<month>"
   And        I select year "<year>"
   Then       I am able to select day,month and year from drop down list

   Examples:
       |day|month   |year|
       |25 |december|1992|

 Scenario:  I should be able to check and uncheck the newsletter box on options section
   Given    I am on newsletter label on options section
   When     I click on newsletter checkbox
   And      I again click on newsletter checkbox
   Then     I was able to check and uncheck the box next to newsletter label

 Scenario:  I should be able to register with valid mandatory (*) field data on registration page
   When     I enter first name "Ria"
   And      I enter last name "sharma"
   And      I enter email "sharma@gmail.com"
   And      I enter password "123456"
   And      I enter confirm password "123456"
   And      I click on register button
   Then     I am able to register successfully
