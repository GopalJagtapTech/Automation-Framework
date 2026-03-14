Feature: FF_6168144_CR - Logic change for LAI cases to show the insurance details in "Asset and Property" section


  Scenario Outline: To verify that user is on landing  page

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify User is able to view below content for Landing Page
    And Verify User is able to view below content for Top Section on Landing Page
    And Verify User is able to view below content for Search Section on Landing Page

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is able to select fields  under Customer by search dropdown field

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify User is able to view below content for Landing Page
    And Verify User is able to view below content for Top Section on Landing Page
    And Verify User is able to view below content for Search Section on Landing Page

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  Scenario Outline: To verify that user is redirected to dashboard page when click on proceed Cta

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245438899" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is dashboard page

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245438899" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is able to view loan tile under dashboard page

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245438899" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Tiles are displayed under Relations

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  Scenario Outline: To verify that user is able to click on getdetails CTA under loan tile

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245438899" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on Get details CTA of "Loans" Relation - "P418PLA10677065"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is redirected to loan details page when click on getdetails CTA

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245438899" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on Get details CTA of "Loans" Relation - "P418PLA10677065"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is able to view Asset and properties under loan

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245438899" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on Get details CTA of "Loans" Relation - "P418PLA10677065"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Assets and Property" section

#    Then User should be  able to view Asset and properties under loan

    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        | Options                                       |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Asset Details, LAIP Details, Property Details |

    @testdata
  Scenario Outline: To verify that user is able to view LAI Product code under Asset and properties

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245438899" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on Get details CTA of "Loans" Relation - "P418PLA10677065"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then User should be able to view LAI under Asset and properties

#  Below Product code should be display on the screen

#  1.PLAIP
#  2.PLAIPFD
#  3.PRLAIP
#  4.PPLAIP

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |
