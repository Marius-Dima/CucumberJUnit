Feature: Steve Madden login
  In order to demonstrate the power of Cucumber and WebDriver combined
  As a Cucumber instructor
  I want to login on the Steve Madden site

  @login
  Scenario Outline: Steve Madden login
    Given I am on the SteveMadden homepage
    When I click the Sign In button
    And I enter the <username> and <password>
    Then I should receive the following <message>
    And I Logout out

  Examples:
    | username          | password        | message                                                                                  |
    | seth2k7@gmail.com | stevemadden     | Hi Marius!                                                                               |
    | seth2k7@gmail.com | stevemadden1231 | The email address and password combination you provided was not found. Please try again. |