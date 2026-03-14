Feature: FF_5235576 : FD Details Page

  @pass @run
  Scenario Outline: To verify that user is redirected to the FD Details Page when user Click on Get Details CTA
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
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Given Menus on LHS of FD Details page
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
    Then Below Menus "<Menus>" Should be displayed to the user on LHS of FD Details page
    Then Below Menus "Prematurity | TDS | Courier" Should be displayed to the user on LHS of FD Details page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Menus                                |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Fixed Deposits Details, Co-Depositor |

  @pass @run
  Scenario Outline: To verify that user is able to view Given Options Under the Fixed Deposits Details section on FD Details page
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
    Then Below Options "<Options>" should be displayed under the Fixed Details section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Reports, Fixed Deposit Details, Scheme Details, Nominee Details, Bank Details, Sourcing Details |

  @pass @run
  Scenario Outline: To verify that user is able to view Given CTA Under the  Report section on FD Details page
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
    Then Below CTA "<CTA>" should be displayed under the Report "Reports" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | CTA                                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Balance Confirmation Letter, TDS Certificate |

  @pass @run
  Scenario Outline: To verify that BCL,TDS CTA is enable and clickable  Under the  Report section on FD Details page
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
    Then Below Documents "<Docs>" should be displayed under the "Reports" section in "FD" Details Page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Docs                                         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Balance Confirmation Letter, TDS Certificate |

  @pass @run
  Scenario Outline: To verify that calendar is displayed when user Clicks on  the BCL report icon Under Report section on FD Details page
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
    And Clicks on BCL Report Download Pdf
    Then "Select a Date" Calendar should be displayed to the User

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @NA  @fail  @run ####Report is not downloaded
  Scenario Outline: To verify that BCL PDF report is get downloaded in user system when user selects the date and clicks on “OK " Under  Report section on FD Details page
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
    And Clicks on BCL Report Download Pdf
    Then "Select a Date" Calendar should be displayed to the User
    And Selects a Date "11112024" in the Select Date Calendar
    And Clicks on "OK" CTA
    Then "BCL.pdf" report Should be downloaded in user system


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that the user can select the date/month/year from the calendar Under  Report section on FD Details page
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
    And Clicks on BCL Report Download Pdf
    Then "Select a Date" Calendar should be displayed to the User
    And Selects a Date "11112024" in the Select Date Calendar
    Then Selected date "20241111" should be confirmed without any errors in the Calendar

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @NA @fail @run
  Scenario Outline:To verify that Validation message is displayed when user select invalid date - BCL Report
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
    And Clicks on BCL Report Download Pdf
    Then "Select a Date" Calendar should be displayed to the User
    And Selects Invalid date in Select a Date Calendar
    And Clicks on "OK" CTA
    Then "" Toast message should be displayed to the User for Invalid date for BCL Report
#    Then Validation error message should be displayed, and the report should not be downloaded

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that OK CTA is Enable and clickable - BCL Report
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
    And Clicks on BCL Report Download Pdf
    Then "Select a Date" Calendar should be displayed to the User
    And Selects a Date "11112024" in the Select Date Calendar
    Then "OK" CTA should be Enabled and Clickable

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that popup is display the last 5 financial years
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
    And Clicks on TDS Report Download Pdf
    Then "Financial Year & Quarter" Popup should be displayed for TDS Report
    Then Popup should be displayed exactly with the last 5 financial years

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @NA @work @fail
  Scenario Outline: To verify that only passed quarters are displayed for current year
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
    And Clicks on TDS Report Download Pdf
    Then "Financial Year & Quarter" Popup should be displayed for TDS Report
    Then Passed Quarters should be displayed for the current year


    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @NA @run @fail
  Scenario Outline: To verify that Reports can be downloaded for different combinations of financial year and quarter -TDS Report - Download
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
    And Clicks on TDS Report Download Pdf
    Then "Financial Year & Quarter" Popup should be displayed for TDS Report
    And Selects the Previous Financial Year from Year Dropdown
    And Selects the First 1 Quarter from Quarter Dropdown
    Then "TDS.pdf" report for the selected financial year and quarter should be downloaded successfully

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @NA @work @fail
  Scenario Outline: To verify that Reports can be downloaded for different combinations of financial year and quarter
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
    And Clicks on TDS Report Download Pdf
    Then "Financial Year & Quarter" Popup should be displayed for TDS Report
    And Selects the Previous Financial Year from Year Dropdown
    And Selects the First 1 Quarter from Quarter Dropdown
    Then Correct PDF report for each selected combination should be downloaded


    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail @NA @run
  Scenario Outline: To verify that Validation message is displayed when user Not selected financial year or quarter and report cannot download
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
    And Clicks on TDS Report Download Pdf
    And Clicks on "Submit" CTA
    Then Validation message or alert should be displayed, and the download should not proceed


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @OOS
  Scenario Outline: To Verify that last 5 financial years are automatically updated when the current financial year changes
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
    And Click on TDS Report icon
    Then Last 5 financial years should be updated automatically to reflect the new current financial year (e.g., if the current financial year is 2024-2025, the popup should display 2020-2021 to 2024-2025)

    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @OOS
  Scenario Outline: To verify that once the financial year changes, the oldest financial year is removed and the new financial year is added
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
    And Click on TDS Report icon
    Then Last 5 financial years should correctly exclude the oldest financial year and include the newly started financial year

    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Given Options Under the  Fixed Deposit Details section on FD Details page
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
    Then Below Options "<Options>" should be displayed under the "Fixed Deposit Details" section in FD Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                                                                                                                                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Portal ID, Branch ID, Maturity Interest, Customer Company For TDS, Application Form No., Branch Name, Interest Start Date, Renewal Sno., Tenor in Days, SFDC Reference ID, Mode Of Operation, Lien Marked, Agreement No., Maturity Instruction |

  @pass @run
  Scenario Outline: To verify that FD Maturity Instruction is  Auto Renew when deposit Status Open and FD Renew Flag is  “Y”
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245037913" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "1573749"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
    Then FD Maturity Instruction Should be displayed "Auto Renew" when the deposit status is "Open" and the FD renew flag is "Y".

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To Verify that the maturity instruction is set to “Auto closure on Maturity” when the deposit status is “Open” and the FD renew flag is “N”
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
    Then FD Maturity Instruction Should be displayed "Auto closure on Maturity" when the deposit status is "Open" and the FD renew flag is "N".

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:  To Verify that the maturity instruction is set to “Prematured” when the deposit status is “Pre-Matured”
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9206430729" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "807867"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
    Then FD Maturity Instruction Should be displayed "Prematured" when the deposit status is "Prematured"


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:  To Verify that the maturity instruction is set to “Matured” when the deposit status is “Matured”.
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9820333113" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "314697-0000"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
    Then FD Maturity Instruction Should be displayed "Matured" when the deposit status is "Matured"


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Given Options Under the Scheme Details section on FD Details page
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
    Then Below Options "<Options>" should be displayed under the "Scheme Details" section in FD Details Page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Scheme ID, Scheme Name, Scheme Type, Payment Frequency |

  @pass @run
  Scenario Outline: To verify that user is able to view Given Options Under the Nominee Details section on FD Details page
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
    Then Below Options "<Options>" should be displayed under the "Nominee Details" section in FD Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                      |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Name, DOB, Relation, Address |

  @pass @run
  Scenario Outline: To Verify that user is able to view DOB option in given masked format under the Nominee details section on FD Details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9206430729" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "1141605"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
    Then Below Masked format should be displayed for DOB in Nominee Details


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @OOS  @NA
  Scenario Outline: Verify that a valid date is correctly masked to the format
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
    And Click on TDS Report icon
    Then Valid date Should be correctly masked to the format


    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Given Options Under the Bank Details section on FD Details page
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
    And Below Options "<Options>" should be displayed under the "Bank Details" section in FD Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Bank Account, Branch, MICR, Bank Name, IFSC Code |

  @pass @run
  Scenario Outline: To Verify that user is able to view Bank Account Number in given masked format under the Nominee details section on FD Details page
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
    Then Bank Account Number should be displayed in Below Masked format in Bank Details

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: Verify that a valid bank account number is correctly masked to show only the last four digits
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
    Then Bank Account Number should be displayed in Below Masked format in Bank Details


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Given Options Under the Sourcing Detail section on FD Details page
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
    Then Below Options "<Options>" should be displayed under the "Sourcing Details" section in FD Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                     |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | DSA Code, DME Name, Channel |

  @pass @run
  Scenario Outline: To verify that user is able to view Given Options Under the Prematurity, TDS, Courier  section on FD Details page
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
    And Clicks on LHS Option "Prematurity | TDS | Courier" in FD Details Page
    Then Below Options "<Options>" should be displayed under the "Prematurity | TDS | Courier" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Prematurity Liquidation Calculator, TDS Details, Courier Details |

  @pass @run
  Scenario Outline: To verify that user is able to view Given Options Under the Prematurity Liquidation Calculator section on FD Details page
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
    And Clicks on LHS Option "Prematurity | TDS | Courier" in FD Details Page
    Then Below Options "<Options>" should be displayed under the "Prematurity Liquidation Calculator" section in FD Details Page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                                                                                                             |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Trial Closure Date, Principal Amount, Liquidation Rate, Gross interest Paid (Till Date), Gross interest Payable, Gross TDS Paid (Till Date), Gross TDS Payable, Net Amount Paid, Net Amount Payable |

  @data @fail @run
  Scenario Outline: To verify that user is able to view Given Options Under the  TDS Details section on FD Details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9820333113" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "1381901"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
    And Clicks on LHS Option "Prematurity | TDS | Courier" in FD Details Page
    Then User should be able to view below details under TDS Details "TDS Details"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data @fail @run
  Scenario Outline: To verify that User is able to view Given Options Under the Courier Details section on FD Details page
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
    And Clicks on LHS Option "Prematurity | TDS | Courier" in FD Details Page
    Then User should be able to view below details under Courier Details "Courier Details"


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data @NA
  Scenario Outline: To verify that user is able to view Latest courier details in Courier details section
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
    And Click on TDS Report icon
    Then Latest Details  should be displayed

    Examples:
      | Domain | Username | Password | Url                                            | Dashboard                                        |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Given Options Under the Co-Depositor section on FD Details page
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
    Then Below Options "<Options>" should be displayed under the "Co-Depositor" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options      |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Co-Depositor |

  @pass @run
  Scenario Outline: To verify that user is able to view Given Options Under the Co-Depositor Details section on FD Details page
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
    Then Below Options "<Options>" should be displayed under the "Co-Depositor" section in FD Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                                               |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Name, Depositor Id, Gender, Age, DOB, PAN, Applicant Type, Adress Type, Is Mailing Adress, Email, Address, Mobile, Phone -1, Phone -2 |

  @pass @run
  Scenario Outline: To Verify that the Co-Depositor details page is displayed with  Deposit Number selection when there are multiple IDs
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
    Then Drop-down for selecting Deposit Numbers should be available in FD Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail @data
  Scenario Outline: To Verify that the Co-Depositor page does not display a Deposit Number drop-down when the customer has only one Deposit
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245037913" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "1573749"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
    And Verify No drop-down for Deposit Number selection should be shown


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that widget displays a drop-down for selecting Deposit Numbers if the user’s profile has multiple FDs
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9891379037" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "1737134"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
    Then Drop-down for selecting Deposit Numbers should be available in FD Details Page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail @run
  Scenario Outline: To verify that the drop-down is not displayed if the user has only one FD
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245037913" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "1573749"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
    And Verify No drop-down for Deposit Number selection should be shown

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user Deposit Number is selected from the drop-down, the page refreshes and displays the corresponding FD details

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9891379037" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on Get details CTA of "FD" Relation - "1737134"
    Then User Should be redirected to the "FD" Details page "https://customer360uat.bajajfinserv.in/depositsdetails"
    And Selects a different Deposit from Deposit Dropdown "642065 (0001)" ,then Page should automatically refresh and display the details of the selected FD


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To Verify that Disclaimer Note is displayed of bottom of the FD Details page - Prematurity | TDS | Courier
  and displays the corresponding FD details
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
    And Clicks on LHS Option "Prematurity | TDS | Courier" in FD Details Page
    Then Disclaimer "<Disclaimer>" Note Should be displayed in the "Prematurity | TDS | Courier" Section


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Disclaimer                                                                                                                                                                                                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | If premature, the penalty is applied on all interest payments since inception of the deposit. Hence, net amount payable could be lower than the principal amount due to the penalty being adjusted from the principal amount. |


  @pass @run
  Scenario Outline: To Verify the message "No records displayed" for - Prematurity | TDS | Courier - TDS Details
  and displays the corresponding FD details
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
    And Clicks on LHS Option "Prematurity | TDS | Courier" in FD Details Page
    Then "No records found" message should be displayed for "TDS Details" when no data available


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To Verify the message "No records displayed" for - Prematurity | TDS | Courier - Courier Details
  and displays the corresponding FD details
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
    And Clicks on LHS Option "Prematurity | TDS | Courier" in FD Details Page
    Then "No records found" message should be displayed for "Courier Details" when no data available


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |







