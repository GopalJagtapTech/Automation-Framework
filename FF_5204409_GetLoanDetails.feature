Feature: FF_5204409_GetLoanDetails


  @pass @run
  Scenario Outline: To verify that on click of Get Loan Details user is redirected to Dashboard page
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
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @NA
#  Scenario Outline: To verify that tabs are displayed on dashboard page
#    Given User is on Customer 360 Login Page
#    And  User should select Domain "<Domain>"
#    And User enters UserName "<Username>"
#    And User enters Password "<Password>"
#    And Clicks on LogIn Button
#    Then User should be redirected to Landing Page "<Url>"
#    And Selects "Mobile Number" Option from Search Dropdown
#    And Enters "9833728591" into Search Input Box
#    And Clicks on "PROCEED" Button
#    Then User should be redirected to Dashboard Page "<Dashboard>"
#    And Verify "Relations Overview" Section is displayed in DashBoard Page
#    And Select a Tab "Loans" in Relations Overview
#    And Clicks on Get details CTA of "Loans" Relation - "405DPFKA311104"
#    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
#    Then Customer should be able to view below details:
##  1.Dashboard tab
##  2.BFL tab
##  3.Bajaj Pay
##  4.Loan Journey
##  5.Auto finance
##  6.Bell icon
##  7.Setting icon
#
#    Examples:
#      | Domain  | Username        | Password | Url                                            | Dashboard                                        |
#      | CC | 1731sd1 | ----123   | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

    @pass @run
  Scenario Outline: To verify that details displayed on click get loan details CTA
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
    Then Below Menus "<Menus>" Should be displayed to the user on LHS of "Loan" Details page
#    And Below "<Buttons>" should be displayed in the Right hand Side of "Loan" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Menus                                                                                                                               |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Loan Details, Assets and Property, EMI Status, DISBMT. Banking Details, Device Finance, Co-Applicant, Track NOC, DEBT MGMT, Charges |

  @pass @run
  Scenario Outline: To verify Flexi information is displayed in menu for flexi LAN
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And User should be able to view "Flexi Information" tab if selected loan is having flexi flag =Y

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify the data displayed on loan details page is as per API response
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
    Then Below Menus "<Menus>" Should be displayed to the user on LHS of "Loan" Details page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Menus                                                                                                                               |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Loan Details, Assets and Property, EMI Status, DISBMT. Banking Details, Device Finance, Co-Applicant, Track NOC, DEBT MGMT, Charges |

  @OOS
#  Scenario Outline: To verify that widget load time is less than 1 second
#    Given User is on Customer 360 Login Page
#    And  User should select Domain "<Domain>"
#    And User enters UserName "<Username>"
#    And User enters Password "<Password>"
#    And Clicks on LogIn Button
#    Then User should be redirected to Landing Page "<Url>"
#    And Selects "Mobile Number" Option from Search Dropdown
#    And Enters "9833728591" into Search Input Box
#    And Clicks on "PROCEED" Button
#    Then User should be redirected to Dashboard Page "<Dashboard>"
#    And Verify "Relations Overview" Section is displayed in DashBoard Page
#    And Select a Tab "Loans" in Relations Overview
#    And Clicks on Get details CTA of "Loans" Relation - "405DPFKA311104"
#    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
#    Then Loading time of widget should be less than 1 second
#    Examples:
#      | Domain  | Username        | Password | Url                                            | Dashboard                                        |
#      | CC | 1731sd1 | ----123   | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

    @pass @run
  Scenario Outline: To verify that  the dropdown for LAN numbers is present when the Get Details Page is loaded.
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9145474127" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "402ECFHA415869"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    Then "Agreement No." Dropdown should be displayed on Loan details page with available LANs

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that a user can select a different LAN number from the dropdown.
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9145474127" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "402ECFHA415869"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    Then Selected LAN number "402SPF73838164" should be displayed in the dropdown, and the details related to that LAN number should update accordingly

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that details displayed under loan details tab
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
    Then Selected LAN number "405DPFIZ946071" should be displayed in the dropdown, and the details related to that LAN number should update accordingly

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that details displayed under Loan Details section
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
    And Clicks on LHS Option "Loan Details" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Loan Details" section


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Sourcing Information, Loan Details, Loan Details Due, Bank Details |

  @pass @run
  Scenario Outline:To verify that details displayed under Sourcing information section
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
    And Clicks on LHS Option "Loan Details" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Sourcing Information" section in "Loan" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                                                  |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Application ID, Approval Date, Branch, Deal ID, Dealer Name, DMA Name, DSA Name, Scheme Code, Scheme, Credit Program, Gross LTV, Net LTV |

  @pass @run
  Scenario Outline: To verify that details displayed under Loan details section
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
    Then Below Options "<Options>" should be displayed under the "Loan Details" section in "Loan" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                                                                                                                                                   |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Amount Finance, Advance EMI, Balance Tenure, Center Code, Center Name, Centre Manager, EMI Received Till Date, First Due Date, Disbursal Date, Gross Tenure, Group Code, Linked Agreement No, Group Name, Net Tenure, Repayment Frequency |

  @pass @run
  Scenario Outline:To verify that details displayed under loan details due
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
    Then Below Options "<Options>" should be displayed under the "Loan Details Due" section in "Loan" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                      |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | EMI Overdue, LPP Overdue, Bounce Charges, Other Charges, Total Overdues, POS |

  @pass @run
  Scenario Outline:To verify that details displayed under Bank Details due
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
    Then Below Options "<Options>" should be displayed under the "Bank Details" section in "Loan" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                             |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Bank Account No, IFSC, ECS Max Limit, Bank Name, MICR, Balance Limit, Expiry Date, Branch, ECS Flag |

  @fail @run @asset
  Scenario Outline:To verify that details displayed under Asset and property tab
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
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Assets and Property" section

#    Then User should be able to view below details:
#  1.Vehical details
#  2.Asset details
#  3.LAIP details
#  4.Property details

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                       |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Asset Details, LAIP Details, Property Details |

  @fail @run
  Scenario Outline:To verify that details displayed under Asset and property tab - Vehicle Loan
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "8459498886" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "401ZUCGC783962"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Assets and Property" section


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Vehicle Details, Asset Details, LAIP Details, Property Details |

  @pass @run
  Scenario Outline: To verify that details displayed under vehicle details
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "8459498886" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "401ZUCGC783962"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Vehicle Details" section in "Loan" Details Page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Chasis No, Engine No, Model, RC No, Registration Date, Vehicle Make/Color, Vehicle Manufactured |

  @pass @run @asset
  Scenario Outline: To verify vehicle details section is hide when LAN is other than automobile loan
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "8459498886" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "401ZUCGC783962"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "<Options>" should not be displayed under the "Assets and Property" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Vehicle details |


  @pass @run @asset
  Scenario Outline: To verify that details displayed under Asset details
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
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Asset Details" section in "Loan" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Model, Asset make |

  @asset @fail @run
  Scenario Outline: To verify asset details section is hide when LAN is for automobile loan
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "8459498886" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "401ZUCGC783962"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "<Options>" should not be displayed under the "Assets and Property" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options       |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Asset Details |


  @fail @run @asset
  Scenario Outline: To verify that details displayed under LAIP details
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
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "LAIP Details" section in "Loan" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                                              |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Maturity Date, Nominee DOB, Nominee Name, Policy Company Name, Policy Holder Name, Policy Number, Policy Start Date, Surrender Value |

  @pass @run
  Scenario Outline: To verify LAIP details section is hide when LAN is other than PLAIP product code
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
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "LAIP Details" should not be displayed under the "Assets and Property" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail @run @asset
  Scenario Outline: To verify that details displayed under Property details
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
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Property Details" section in "Loan" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Address, Description, Market Value, Property Type |

  @fail @run
  Scenario Outline: To verify that property details section should be displayed if loan is secured loan
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "8329830144" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "P578PBL1912983"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "Property Details" should be displayed under the "Assets and Property" section


#    Then User should be able to view property section if loan is secured loan
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that property details section should be hide if loan is other than secured loan
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
    And Clicks on LHS Option "Assets and Property" in "Loan" Details Page
    Then Below Options "Property Details" should not be displayed under the "Assets and Property" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is able to view EMI status in tabular format
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
    And click on EMI status
    Then User should be able to view EMI status in tabular format
    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify the details displayed in EMI status table
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
    And click on EMI status
    Then User should be able to view EMI status table with below column:
#  1.Due Date
#  2.Type
#  3.Presentation date
#  4.Repay mode
#  5.Sub repay mode
#  6.Bank name
#  7.Account number
#  8.MICR
#  9.Account holder name
#  10.Amount
#  11.Status
#  12.Reason
    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @OOS
  Scenario Outline: To verify that the content of the table autofits within the cells to avoid white spaces.
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
    And click on EMI status
    Then All table cells should be display content without any unnecessary white spaces, properly fitting the text.
    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that ensure that the amount in the table displays up to two decimal digits. - EMI
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
    And click on EMI status
    Then All amounts should be formatted correctly to two decimal places
    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

#@emi - Use the second Agreement
  @pass @run
  Scenario Outline: To verify “No Records Available.” pop up is displayed when no data is available
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
    And Clicks on LHS Option "EMI Status" in "Loan" Details Page
    Then User should be able to view below pop up with header: "No Data Available"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

#  @work - Use same data
  @pass @run
  Scenario Outline: To verify that user is able to view Disbursement banking details tab in tabular format
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9650543332" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "401BLF85202471"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "DISBMT. Banking Details" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "DISBMT. Banking Details" section
    And User should be able to view below details under Disbursment Banking Details "Disbursment Banking Details"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                     |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Disbursment Banking Details |

  @pass @run @disburse
  Scenario Outline: To verify the details displayed in Disbursement banking details tab
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9145474127" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "402ECFHA415869"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Selects "402SPF73838164" Agreement No in Loan Details PAge
    And Clicks on LHS Option "DISBMT. Banking Details" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "DISBMT. Banking Details" section
    And User should be able to view below details under Disbursment Banking Details "Disbursment Banking Details"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                     |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Disbursment Banking Details |

  @pass @run @disburse
  Scenario Outline: To verify that only last four digit of account number are  displayed in mask
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9145474127" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "402ECFHA415869"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Selects "402SPF73838164" Agreement No in Loan Details PAge
    And Clicks on LHS Option "DISBMT. Banking Details" in "Loan" Details Page
    Then Only last four digit of account number should be displayed under Disbursment Banking Details

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run @disburse
  Scenario Outline: To verify that ensure that the amount in the table displays up to two decimal digits. - Disbursement
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9145474127" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "402ECFHA415869"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Selects "402SPF73838164" Agreement No in Loan Details PAge
    And Clicks on LHS Option "DISBMT. Banking Details" in "Loan" Details Page
    Then All amounts should be formatted correctly to two decimal places under Disbursment Banking Details

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run @disburse
  Scenario Outline: To verify that No Records Available for Disbursement banking details
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9145474127" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "402ECFHA415869"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "DISBMT. Banking Details" in "Loan" Details Page
    Then User should be able to view below pop up message: "No Data Available"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run @flexi
  Scenario Outline:To verify that user is able to view Flexi information tab
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And User should be able to view "Flexi Information" tab if selected loan is having flexi flag =Y

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run @flexi
  Scenario Outline: Flexi information tab  is  hide for other loan except flexi loan
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
    Then "Flexi Information" tab should be hide for other loan except flexi loan

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that when there is no data available then user is able to view message - Flexi Drawdown Transactions
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Flexi Information" in "Loan" Details Page
    Then "No Data Available" message should be displayed for "Flexi Drawdown Transactions" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run @flexi
  Scenario Outline: To verify that details displayed in  Flexi information tab
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Flexi Information" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Flexi Information" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Flexi Information, Flexi Lite and Favourite Status, Flexi Drawdown Transactions, Flexi Part payment Transactions |

  @fail @run @flexi
  Scenario Outline: To verify that details displayed in Flexi information section
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Flexi Information" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Flexi Information" section in "Loan" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Available Limit, Dropline Limit, Flexi Flag, Utilized Limit, Virtual Acc Number |

  @pass @run @flexi
  Scenario Outline: To verify that details displayed in  Flexi lite and favourite status
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Flexi Information" in "Loan" Details Page
    Then Below Options "<Options>" should be displayed under the "Flexi Lite and Favourite Status" section in "Loan" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Flexi Lite Status, Flexi Lite Set Up amount, Favourite Status, Favourite Amount |

  @pass @run
  Scenario Outline: To  verify that if favourite status field is   N  Favourite Status is displayed  = "N"otherwise  "Y"
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Flexi Information" in "Loan" Details Page
    Then Favourite Status under Flexi Lite and Favourite Status of Flexi Information should be "N"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that details displayed in Flexi drawdown transaction
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

  @pass @run
  Scenario Outline: To verify “No transaction available” pop up message is displayed if transactions are not available - Flexi Information
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "593BLF95596741"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Flexi Information" in "Loan" Details Page
    Then "No Data Available" message should be displayed for "Flexi Drawdown Transactions" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify Flexi drawdown  transaction details is displayed if the Transactiontype=”DD”
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
    Then Below Options "<Options>" should be displayed under the "Flexi Information" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Flexi Information, Flexi Lite and Favourite Status, Flexi Drawdown Transactions, Flexi Part payment Transactions |

  @pass @run
  Scenario Outline: To verify that details displayed in flexi partpayment transaction
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
    Then User should be able to view below details under Flexi partpayment transactions "Flexi Part payment Transactions"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify “No transaction available” pop up message is displayed if transactions are not available - Flexi Part payment Transactions
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
    Then "No Data Available" message should be displayed for "Flexi Part payment Transactions" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify “No transaction available” pop up message is displayed if transactions are not available - Flexi Block Unblock Status
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
    Then "No Data Available" message should be displayed for "Flexi Block Unblock Status" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run @devfin
  Scenario Outline: To verify that user is able to view device finance tab
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
    And Clicks on LHS Option "Device Finance" in "Loan" Details Page
    Then User should be able to view Device finance tabs "<Tabs>" with below details

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Tabs                                                           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Device Information,Lock Details,Unlock Details,Release Details |

  @devfin @data
  Scenario Outline: To verify that details displayed under device information section
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
    And Clicks on LHS Option "Device Finance" in "Loan" Details Page
    And Clicks on "Device Information" Tab in Device Finance Section
    Then User should be able to view below details under Device information section in Device Finance


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data @devfin
  Scenario Outline: To verify that IMEI number is displayed in masking form - Device Finance
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
    And Clicks on LHS Option "Device Finance" in "Loan" Details Page
    Then  IMEI number should be  displayed in masking form
    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @devfin @fail @run
  Scenario Outline: To verify that details displayed under Lock details  section
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
    And Clicks on LHS Option "Device Finance" in "Loan" Details Page
    And Clicks on "Lock Details" Tab in Device Finance Section
    Then User should be able to view below details under Lock Details section in Device Finance

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @devfin @fail @run
  Scenario Outline: To verify that details displayed under Unlock details  section
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
    And Clicks on LHS Option "Device Finance" in "Loan" Details Page
    And Clicks on "Unlock Details" Tab in Device Finance Section
    Then User should be able to view below details under Unlock Details section in Device Finance

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @devfin @fail @run
  Scenario Outline: To verify that details displayed under release details  section
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
    And Clicks on LHS Option "Device Finance" in "Loan" Details Page
    And Clicks on "Release Details" Tab in Device Finance Section
    Then User should be able to view below details under Release Details section in Device Finance


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline:To verify When there are no records available, user is able to view pop up message - Device Finance - Device Information
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
    And Clicks on LHS Option "Device Finance" in "Loan" Details Page
    And Clicks on "Device Information" Tab in Device Finance Section
    Then "No Records Found" message should be displayed for Device Information when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify When there are no records available, user is able to view pop up message - Device Finance - Lock Details
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
    And Clicks on LHS Option "Device Finance" in "Loan" Details Page
    And Clicks on "Lock Details" Tab in Device Finance Section
    Then "No Records Found" message should be displayed for Lock Details when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify When there are no records available, user is able to view pop up message - Device Finance - Unlock Details
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
    And Clicks on LHS Option "Device Finance" in "Loan" Details Page
    And Clicks on "Unlock Details" Tab in Device Finance Section
    Then "No Records Found" message should be displayed for UnLock Details when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify When there are no records available, user is able to view pop up message - Device Finance - Release Details
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
    And Clicks on LHS Option "Device Finance" in "Loan" Details Page
    And Clicks on "Release Details" Tab in Device Finance Section
    Then "No Records Found" message should be displayed for Release Details when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:Verify that the disclaimer content is correct and matches the given information
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
    And Clicks on LHS Option "Device Finance" in "Loan" Details Page
    Then Disclaimer "<Disclaimer>" Note Should be displayed in the Device Finance Section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Disclaimer                                                                                                                         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Dear user, The date captured is the action time from our end. Execution time would be after sometime of the date & time mentioned. |

  @data
  Scenario Outline: To verify that dropdown is displayed for co-applicant tab
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "8708497198" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Loans" in Relations Overview
    And Clicks on Get details CTA of "Loans" Relation - "P510PBL4289098"
    Then User Should be redirected to the "Loan" Details page "https://customer360uat.bajajfinserv.in/getloandetails/loandetails"
    And Clicks on LHS Option "Co-Applicant" in "Loan" Details Page
    Then Customer Id Dropdown should be displayed for co-applicant tab

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that pop up message is displayed if no data present for available loan - Co Applicant
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
    And Clicks on LHS Option "Co-Applicant" in "Loan" Details Page
    Then User should be able to view below pop up message: "No co-applicant available for selected loan."


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that details displayed if indiCorpFlag =I - Co Applicant

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
    And click on Co-Applicant tab
    Then  User should be able to view below details:
#  1.Customer id
#  2.Applicant name
#  3.DOB
#  4.Gender
#  5.Marital status
#  6.PAN
#  7.Address type
#  8.Address
#  9.Mobile
#  10.Email
#  11.Phone 1
#  12.Phone 2
    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that details displayed if indiCorpFlag =C - Co Applicant Details
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
    And click on Co-Applicant tab
    Then  User should be able to view below details:
#  1.Customer id
#  2.Applicant name
#  3.DOI
#  4.Nature of bussiness
#  5.Industry
#  6.TAN
#  7.Address type
#  8.Address
#  9.Mobile
#  10.Email
#  11.Phone 1
#  12.Phone 2
    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that details displayed when user clicks on  Track NOC tab
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
    And click on Track NOC
    Then  Below details should be displayed in tabular format:
#  1.Courier company name
#  2.Pod no
#  3.Dispatched date (Expected)
#  4.Delivery date(Actual)
#  5.Collected by
#  6.Remark

    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify When there are no records available, user is able to view pop up message - Track NOC
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
    And Clicks on LHS Option "Track NOC" in "Loan" Details Page
    Then User should be able to view below pop up message: "No Data Available"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Debt management and charges tab at the LHS of the page
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
    Then Below Menus "<Buttons>" Should be displayed to the user on LHS of "Loan" Details page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Buttons            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | DEBT MGMT, Charges |

  @pass @run
  Scenario Outline: To verify that user is able to click Debt management Option in LHS
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
    And Clicks on LHS Option "DEBT MGMT" in "Loan" Details Page
    Then Verify User redirected to "https://report.bajajfinserv.in/CollectionsReport" Url in New Tab

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to click Charges Option in LHS
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
    And Clicks on LHS Option "Charges" in "Loan" Details Page
    Then Verify User redirected to "https://report.bajajfinserv.in/ChargeDetails.aspx" Url in New Tab

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |






  