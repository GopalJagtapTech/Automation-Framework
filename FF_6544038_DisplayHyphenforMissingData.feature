Feature: FF_6544038_Display Hyphen ("-") for Missing Data in C-360 BHFL (BFL Sourcing) Cases

  ######25830387
  @pass @run
  Scenario Outline: To verify that User is able to redirect dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Agreement Number" Option from Search Dropdown
    And Enters "403CPP46853086" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  Scenario Outline: To verify that user is able to view BFHL Sourcing nudge on loan card when Source system id =7 in LoanDetails API
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Agreement Number" Option from Search Dropdown
    And Enters "403CPP46853086" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    Then User should be able to view BFHL Sourcing nudge on loan card when Source system id =7 in LoanDetails API

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  Scenario Outline: To verify that on click of Get Details Notification message displayed
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Agreement Number" Option from Search Dropdown
    And Enters "403CPP46853086" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    Then Notification message should be displayed with below details for BHFL "Data will be displayed post migration"
#  "Data not available due to BHFL sourcing."

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  Scenario Outline: To verify that hyphen ("–") is displayed when data from BHFL sourcing is unavailable
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Agreement Number" Option from Search Dropdown
    And Enters "403CPP46853086" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    Then Hyphen "–" should be displayed when data from BHFL sourcing is Unavailable

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


