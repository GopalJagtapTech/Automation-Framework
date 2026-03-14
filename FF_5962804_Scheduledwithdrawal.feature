Feature: FF_5962804_Scheduled withdrawal - Identifier in Flexi Drawdown Transactions & Additional Details in Flexi Transactions

  @pass
  Scenario Outline: To verify that User is able to redirect dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9867024806" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass
  Scenario Outline:To verify that User is able to view Flexi information tab under loan card
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9728707988" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And User should be able to view "Flexi Information" tab if selected loan is having flexi flag =Y

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  Scenario Outline:To  verify that user is able to view Scheduled withdrawal option after agreement number  under  Flexi Drawdown Transactions table

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9728707988" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Flexi Information" in "Loan" Details Page
    And User should be able to view "Scheduled Withdrawal" under "Flexi Drawdown Transactions"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  Scenario Outline:To verify that User is able to view details under Scheduled Withdrawal Summary below Flexi Drawdown Transactions table
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9728707988" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Flexi Information" in "Loan" Details Page
    And User should be able to view "Scheduled Withdrawal" under "Flexi Drawdown Transactions"
    Then User should be able to view below details under Scheduled Withdrawal Summary "Scheduled Withdrawal Summary"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  Scenario Outline:To verify that user is able to view "<Option>" option under Scheduled Withdrawal Summary table

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9728707988" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Flexi Information" in "Loan" Details Page
    And User should be able to view "<Option>" under "Scheduled Withdrawal Summary"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        | Option                                |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | AGREEMENT NO                          |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | PORTAL ID                             |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | REQ PLACED DATE TIME                  |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | SOURCE                                |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | AMT (INR)                             |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | SCHEDULED WITHDRAWAL DATE             |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | SCHEDULED WITHDRAWAL EXECUTION STATUS |


  Scenario Outline:To verify that No data Available is displayed in Scheduled Withdrawal Summary table when no scheduled transaction is availble

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9728707988" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Flexi Information" in "Loan" Details Page
    And User should be able to view "Scheduled Withdrawal" under "Flexi Drawdown Transactions"
    Then "No Data Available" message should be displayed for "Scheduled Withdrawal Summary" when no data available

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

