Feature: FF_6596276:Nomenclature Update in C-360 Card Section

#100002075
@pass @run
  Scenario Outline: To verify that user is able to view Total Loan Offer instead of Card Limit
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100002075" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    Then User should be able to view "Total Loan Offer" instead of Card Limit for Cards Relation "2030XXXXXXXX5592"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail @run
  Scenario Outline: To verify that user is able to view Available Loan Limit instead of Available Loan Offer
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100002075" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    Then User should be able to view "Available Loan Limit" instead of Available Loan Offer for Cards Relation "2030XXXXXXXX5592"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |
  
  
  