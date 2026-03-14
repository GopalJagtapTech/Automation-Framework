Feature: FF_6571472_Updates to Customer360 Application for Data Security, Integration, and User Experience Enhancement

  @pass  @run
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
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
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
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to enter number under Customer by search dropdown field
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
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
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
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
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view quicklinks section under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "QUICK LINKS" Section in DashBoard Page is displayed

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Bureau Insights Tab under quicklinks section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9847116906" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Quick Links Section in DashBoard Page with Links "BUREAU INSIGHTS"

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is redirected to Bureau Insights page when user click on Bureau Insights Tab
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9847116906" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Quick Links Section in DashBoard Page with Links "BUREAU INSIGHTS"
    And Clicks on "BUREAU INSIGHTS" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/bureauinsight" Page

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |
 
#  Scenario Outline: To verify that user is redirected to  Bureau Insights page when user click on Bureau Insights Tab
#    Given User is logged in "<Domain>" "<Username>" for "<Password>"
#    When Click on Customer by search dropdown
#    And  Click on Customer ID Number
#    And Enter the Customer ID  Number
#    And Click on proceed CTA
#    And Verify the qicklinks section
#    And Click on Bureau Insights Tab under quicklinks section
#    Then User should be redirected to  Bureau Insights page when user click on Bureau Insights Tab
#
#  Examples:
#  | Domain                         | Username     | Password|
#  |BFL.COM/ CC/ Partner ||*********         | **********|

  @data @NA
  Scenario Outline: To verify that  Reporting Details is Remove from Bureau Insights Tab.
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9847116906" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Quick Links Section in DashBoard Page with Links "BUREAU INSIGHTS"
    And Clicks on "BUREAU INSIGHTS" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/bureauinsight" Page
    And Verify the  Reporting Details
    Then  Reporting Details should be Remove from Bureau Insights Tab.

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view loan tile under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9833728591" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    Then Customer should be able to view below details on loan cards

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view get details CTA under loan tile
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9833728591" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    Then User should be able to view Get Details CTA under Loan Tile "405DPFKA311104"

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that user is redirected to loan page when user click on get details CTA
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9833728591" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "405DPFKA311104"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Co applicant details in masking form for the profiles
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "660538241" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "P04GPBL24408761"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Co-Applicant" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Co-Applicant" section in "Loan" Details Page


#    And Verify the Co-applicant details
#    And Verify the  Profile
#    Then User should be able to view co applicant details in masking form for below profiles Auditor, DMS-Collection, Service Non-PII, Service Non-PII NON BFL, CL,and Underwriting

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        | Options                                                                                                               |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Customer id, Applicant Name, DOB, Gender, Marital Status, PAN, ADDRESS, ADDRESS TYPE, MOBILE, EMAIL, PHONE-1, PHONE-2 |

  @cc1 @data
  Scenario Outline: To verify that fields displayed Masking form under Co-applicant details option
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "660538242" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "405DPFKA311104"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Co-Applicant" in "Loan" Details Page

#    And Verify the Co-applicant details
#    And Verify the  Co-applicant Masking for Non PII Profile
#  Fields should be displayed  Masking form under Co-applicant details option
#  1.DOB,
#  2.PAN,
#  3.Address,
#  4.Mobile,
#  5. Email,
#  6. Phone-1 and Phone -2


    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is not able to view Bell Icon under first login on the Login Page

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should  not be able to view Bell Icon which comes in first login on the Login Page

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view insurance and FD under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "25830387" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Verify Tiles are displayed under Relations
#    And Verify the insurance /FD tile
#    Then User should be  able to view insurance and FD under dashboard page

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is redirected to insurance page when user click on insurance tile  get details CTA
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "25830387" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "CP000053DY07200"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Nominee Details under insurance details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "25830387" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "CP000053DY07200"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Below Options "<Options>" should be displayed under the "Nominee Details" section in "Insurance" Details Page

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        | Options                                                                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Nominee Name, Nominee Age, Nominee DOB, Nominee Relation, Nominee Contact No., Nominee Address |

  @NA
  Scenario Outline: To verify that user is able to view masking logic for fields under Nominee Details

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "25830387" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "CP000053DY07200"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Below Options "<Options>" should be displayed under the "Nominee Details" section in "Insurance" Details Page


#    And .Verify the Nominee Details under insurance details page
#    Then User should be  able to view masking logic for below fields   under  Nominee Details
#  1.Nominee DOB
#  2.Nominee Contact No
#  3.Nominee Address

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        | Options                                                                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Nominee Name, Nominee Age, Nominee DOB, Nominee Relation, Nominee Contact No., Nominee Address |

  @pass @run
  Scenario Outline: To verify that user is able to view Nominee Details under Insurance details page

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "25830387" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "CP000053DY07200"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Below Options "<Options>" should be displayed under the "Nominee Details" section in "Insurance" Details Page

#    Then User should be  able to view Nominee Details under FD details page

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        | Options                                                                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Nominee Name, Nominee Age, Nominee DOB, Nominee Relation, Nominee Contact No., Nominee Address |

  @pass @run
  Scenario Outline: To verify that user is redirected to FD details page when user click on getdetails CTA under FD tile
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "544165"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail ###Due to blank fields
  Scenario Outline: To verify that user is able to view Co Depositor  details in masking form for the profiles

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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "544165"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
    And Clicks on LHS Option "Co-Depositor" in FD Details Page
    And Verify the masking format for Email "Email" under "Co-Depositor" Section in FD Details Page
    And Verify the masking format for Address "Address" under "Co-Depositor" Section in FD Details Page
    And Verify the masking format for Mobile "Mobile" under "Co-Depositor" Section in FD Details Page
    And Verify the masking format for Pan "PAN" under "Co-Depositor" Section in FD Details Page
    And Verify the masking format for Dob "DOB" under "Co-Depositor" Section in FD Details Page

#    And Verify the  Co-applicant Masking for Non PII Profile
#    Then User should be able to view Co Depositor  details in masking form for below profiles
#  Auditor, DMS-Collection, Service Non-PII, Service Non-PII NON BFL, CL,and Underwriting


    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail ###Due to blank fields
  Scenario Outline:To verify that user is able to view Co Depositor under FD details page
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "544165"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
    And Clicks on LHS Option "Co-Depositor" in FD Details Page
    And Verify the masking format for Email "Email" under "Co-Depositor" Section in FD Details Page
    And Verify the masking format for Address "Address" under "Co-Depositor" Section in FD Details Page
    And Verify the masking format for Mobile "Mobile" under "Co-Depositor" Section in FD Details Page
    And Verify the masking format for Pan "PAN" under "Co-Depositor" Section in FD Details Page
    And Verify the masking format for Dob "DOB" under "Co-Depositor" Section in FD Details Page

#    And Verify the  Co Depositor  Masking for Non PII Profile
#    Then User should be able to view Co Depositor under FD details page
#  1.DOB,
#  2.PAN,
#  3.Address,
#  4.Mobile,
#  5. Email,
#  6. Phone-1 and Phone -2

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |
 





