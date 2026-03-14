Feature: FF_6594443_CR_Service Profile Page in C-360


  Scenario Outline: To verify that user is login with Auditor Profile
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Auditor"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is login with EXTERNAL (HB) NON PII
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "EXTERNAL (HB) NON PII"

    Examples:
      | Domain | Username  | Password     | Url                                            | Dashboard                                        |
      | CC     | 202371761 | Connect@2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is login with EXTERNAL (HB) PII
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "EXTERNAL (HB) PII"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is login with EXTERNAL (H) PII
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "EXTERNAL (H) PII"


    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                        |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is login with  EXTERNAL (H) NON PII
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "EXTERNAL (H) NON PII"

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass1
  Scenario: To verify user is able  to fill Select domain ,customername,password field and Login  CTA  get enable
    Given User is on Customer 360 Login Page
    And Verify LHS side of Login Page

  @pass1
  Scenario Outline: To verify that first OTP is triggered on user  email
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    And Verify the OTP Popup "Enter One Time Password (OTP)" for Login Page
    And Verify First OTP should be triggered on user email "A six digit code has been sent on your email"

    Examples:
      | Domain | Username  | Password     | Url                                            | Dashboard                                        |
      | CC     | 202371761 | Connect@2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass1
  Scenario Outline: To verify that user is able to view OTP screen after OTP is triggered
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    And Verify the OTP Popup "Enter One Time Password (OTP)" for Login Page
    And Verify First OTP should be triggered on user email "A six digit code has been sent on your email"
    And Verify Other Contents on Login Page OTP Popup

    Examples:
      | Domain | Username  | Password     | Url                                            | Dashboard                                        |
      | CC     | 202371761 | Connect@2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass1
  Scenario Outline: To verify OTP sent is of 6 digit only
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    And Verify the OTP Popup "Enter One Time Password (OTP)" for Login Page
    And Verify that the OTP sent should be of 6 digit only

    Examples:
      | Domain | Username  | Password     | Url                                            | Dashboard                                        |
      | CC     | 202371761 | Connect@2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @la
  Scenario Outline: To verify resend cta is disabled for 60 secs
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And Verify the  OTP field
#  Resend cta should be disabled for 60 secs
    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @la
  Scenario Outline: To verify resend cta is enable after 60 sec
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And Verify the  OTP field
#  Resend cta should be  enable after 60 sec
    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @la
  Scenario Outline: To verify resend OTP popup is displayed for resend OTP
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And Verify the  OTP field
#  Resend OTP popup should be displayed for resend OTP

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @la
  Scenario Outline: To verify OTP is triggered to mobile when user click on SMS
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And click on SMS
#  OTP should be triggered to mobile when user click on SMS

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @la
  Scenario Outline: To verify OTP is triggered to email when user click on Email
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And click on Email
#  OTP should be  triggered to email when user click on Email
    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @la
  Scenario Outline: To verify user is redirected to landing page after entering correct OTP
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And Verify the  landing page
#  User should be  redirected to landing page after entering correct OTP

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @la
  Scenario Outline: To verify email is send to customer in shared format
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And Verify the  format
#  Email should be  send to customer in shared format
    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @cc1
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
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @cc1
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
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass1
  Scenario Outline: To verify that user is able to enter number under Customer by search dropdown field
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass2
  Scenario Outline: To verify that user is redirected to dashboard page when click on proceed Cta
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

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass2
  Scenario Outline: To verify that user is on dashboard page
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

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass2
  Scenario Outline: To verify that user is on dashboard page
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

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass2
  Scenario Outline: To verify that user is able  to view personal info under dashboard page
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
    And Verify Contents of Personal Info Section in DashBoard Page
#    Then User should be able to view personal info under dashboard page

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is able to view Cust ID instead of GR ID
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
    And Verify the personal info
    Then User should be  able to view Cust ID instead of GR ID
    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass2
  Scenario Outline: To verify  that user is able to view service segment under dashboard page
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
    And Verify "SERVICE SEGMENT" Section in DashBoard Page is displayed
#    Then User should be  able to view service segment under dashboard page

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail2
  Scenario Outline: To verify that fields are removed from service segment section
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
    And Verify "SERVICE SEGMENT" Section in DashBoard Page is displayed
    Then  Below fields "<Fields>" should be removed from service segment section
    Then  Below fields "BBPS | WALLET | UPI Status" should be removed from service segment section

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        | Fields                                    |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Account Aggregator Consent#Mandate Status |

  @pass2
  Scenario Outline:To verify that user is able to view quick links under dashboard page
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
#    Then  User should be able to view quick links under dashboard page

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail2
  Scenario Outline:To verify that fields are removed from under  quick links section
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
    Then Below fields "<Links>" should be removed from quick links section
#  1.Offer
#  2. CTR
#  3. RMS
#  4. 3 in 1 data
#  5. Raise SR

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        | Links                               |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | OFFERS#RAISE SR#CTR#RMS#3-in-1 Data |

  @fail2
  Scenario Outline: To verify that Communication trails is removed from dashboard page
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
    And Verify "Communication Trails" Section is not displayed in DashBoard Page

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail3
  Scenario Outline: To verify that More Widget is removed from dashboard page
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
    And Verify "Widgets" Section is not displayed in DashBoard Page

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail3
  Scenario Outline: To verify that user is able to view loan tile under dashboard page
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    Then Customer should be able to view below details on loan cards

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass3
  Scenario Outline: To verify that user is redirected to loan details page when click on get details CTA under loan tile
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "4040CD74020408"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail3
  Scenario Outline: To verify that Fields are removed from Get loan details page
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "4040CD74020408"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    Then Below Menus "<Menus>" Should not be displayed to the user on LHS of "Loan" Details page

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        | Menus                                                          |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | EMI Status, DISBMT. Banking Details, Device Finance, Track NOC |

  @pass3
  Scenario Outline: To verify that user is able to view Co- Applicant under get loan details page
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "4040CD74020408"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Below Menus "Co-Applicant" Should be displayed to the user on LHS of "Loan" Details page

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail3
  Scenario Outline: To verify that Fields are unmasked under Co- Applicant
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
    Then Below Options "<Options>" should be unmasked under the "Co-Applicant" section

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        | Options                                                      |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Customer id, Applicant Name, Gender, Marital Status, ADDRESS |

  @pass4
  Scenario Outline: To verify that user is able to view FD under dashboard page
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
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail
  Scenario Outline: To verify that Fields are unmasked under Co-depositor
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "544165"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
#  Below Fields should be  unmasked under Co-depositor
#  1.Name
#  2. Depositor Id
#  3.Gender
#  4. Age
#  5.Mode of Operation
#  6.Address Type
#  7.E-Mail Address

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @NA
  Scenario Outline: To verify that user is able to view Profile name to be hidden under landing page
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
    And Verify the  dashboard page
    Then User should be able to view Profile name to be hidden under landing page

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that Loan Journey is removed from landing page

    Given User is logged in "<Domain>" "<Username>" for "<Password>"
#  Verify the  landing page
    Then Loan Journey should be removed from landing page
    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that Virtual card details is removed
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
    And Verify the  dashboard page
    Then Virtual card details should be  removed
    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass4
  Scenario Outline: To verify that user is able to view bajaj pay under landing page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    Then User should be able to view "Bajaj Pay" under landing page
    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass4
  Scenario Outline: To verify that user is able to click on bajaj pay
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be able to view Bajaj Pay Section

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

#  Scenario Outline: To verify that user is able to select fields  under Customer by search dropdown field
#    Given User is logged in "<Domain>" "<Username>" for "<Password>"
#    When Verify the landing page
#    And Verify the  Customer by search dropdown
#
#    Then User should be able to select fields  under Customer by search dropdown field
#    Examples:
#      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
#      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |
#
#  Scenario Outline: To verify that user is able to enter number under Customer by search dropdown field
#    Given User is logged in "<Domain>" "<Username>" for "<Password>"
#    When Verify the landing page
#    And Click on  Customer by search dropdown
#
#    Then User should be able to enter number under Customer by search dropdown field
#    Examples:
#      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
#      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |
#
#  Scenario Outline: To verify that user is redirected to dashboard page when click on proceed Cta
#    Given User is logged in "<Domain>" "<Username>" for "<Password>"
#    When Verify the landing page
#    And Click on  Customer by search dropdown
#    And Enter the Customer ID  Number
#    Then User should be redirected to dashboard page when click on proceed Cta
#    Examples:
#      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
#      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |
#

#  Scenario Outline: To verify that user is redirected to bajaj pay page when user click on bajaj pay
#    Given User is logged in "<Domain>" "<Username>" for "<Password>"
#    When Verify the landing page
#    And Click on  Customer by search dropdown
#    And Enter the Customer ID  Number
#    And Verify the landing page
#    And Verify the baja pay under header section of landing page
#    And Click on Bajaj pay
#
#    Then User should be redirected to bajaj pay page when user click on bajaj pay
#    Examples:
#      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
#      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |
#
#  Scenario Outline: To verify that user is redirected to bajaj pay page when user click on bajaj pay
#    Given User is logged in "<Domain>" "<Username>" for "<Password>"
#    When Verify the landing page
#    And Click on  Customer by search dropdown
#    And Enter the Customer ID  Number
#    And Verify the landing page
#    And Verify the baja pay under header section of landing page
#    And Click on Bajaj pay
#
#    Then User should be redirected to bajaj pay page when user click on bajaj pay
#    Examples:
#      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
#      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that Raise SR is removed from quick links section
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Verify the landing page
    And Click on  Customer by search dropdown
    And Enter the Customer ID  Number
    And Verify the landing page
    And Verify the baja pay under header section of landing page
    And Click on Bajaj pay
    And Verify the quick links section

    Then Raise SR should be removed from quick links section

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass4
  Scenario Outline: To verify that user is able to view wallet under bajaj pay dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Bajaj Pay Dashboard "https://customer360uat.bajajfinserv.in/bajajpaydashboard" Page
    Then User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "Wallet"
#    Then User should be  able to view wallet under bajaj pay dashboard page

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass4
  Scenario Outline: To verify that click on wallet user is able to view Gift card
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Bajaj Pay Dashboard "https://customer360uat.bajajfinserv.in/bajajpaydashboard" Page
    Then User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "Wallet"
    Then Below Headers "Gift Card" should be displayed under "Wallet" Tab

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass4
  Scenario Outline: To verify that user is able to click on Gift card
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Gift Card"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass4
  Scenario Outline: To verify that user is redirected to gift card page when click on gift card
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Gift Card"
    And Verify User redirected to "https://service360uat.bajajfinserv.in/giftcard" Url in New Tab

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that Fields are masked under gift card
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Verify the landing page
    And Click on  Customer by search dropdown
    And Enter the Customer ID  Number
    And Verify the landing page
    And Verify the baja pay under header section of landing page
    And Click on Bajaj pay
    And  Click on Gift card
    And Verify the masked fields

    Then Below Fields should be masked under gift card
#  1.Purchaser
#  2.Transaction details
#  3.Reedemer

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

