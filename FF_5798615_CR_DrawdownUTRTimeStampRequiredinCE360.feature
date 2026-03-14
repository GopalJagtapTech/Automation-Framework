Feature: FF_5798615_CR_Drawdown UTR Time Stamp Required in CE360

  @pass @run
  Scenario Outline: To verify that user is able to click  Flexi Information from LHS  section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9111199339" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "P405FSA5931673"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Flexi Information" in "Loan" Details Page
    Then User should be able to view below details under Flexi Drawdown Transactions "Flexi Drawdown Transactions"


    Examples:

      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |






