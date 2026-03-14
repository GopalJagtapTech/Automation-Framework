Feature: FF_5233461_Get Details Page for Insurance Card

  @pass @run
  Scenario Outline: To verify that user is able to view Get Details CTA under insurance  card Tile
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    Then User should be able to view Get Details CTA under Insurance Tile "IL3227607"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is redirected to insurance details  page when user clicks on get details CTA
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify Below Menus "<Menus>" Should be displayed to the user on LHS of Insurance Details Page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Below Menus "<Menus>" Should be displayed to the user on LHS of "Insurance" Details page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Menus             |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Insurance Details |

  @pass @run
  Scenario Outline: To verify that user is able to view  insurance  Details on the page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Below Options "<Options>" should be displayed under the "Insurance Details" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                      |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Insurance Header, Nominee Details, Downloads |

  @pass @run
  Scenario Outline: To verify that user is able to view Insurance Header Details on the screen
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    Then Below Options "<Options>" should be displayed under the "Insurance Header" section in "Insurance" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                                     |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Insurance Type, Premium Amount, Issuance Status, Disbursement Date, Payment Type, Policy Period, Insurance Term, EMI Amount |

  @pass @run
  Scenario Outline: To verify that user is able to view Nominee Details on the screen
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Below Options "<Options>" should be displayed under the "Nominee Details" section in "Insurance" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Nominee Name, Nominee Age, Nominee DOB, Nominee Relation, Nominee Contact No., Nominee Address |

  @pass @run
  Scenario Outline: To verify that user is able to view Download Details on the screen
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    Then Below Documents "<Docs>" should be displayed under the "Downloads" section in "Insurance" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Docs                                                                                                                                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | BALIC claim for critical illness, Death Claim Form, FGI CI Claim Form, Future General Claim New Form, HDFC Claim Form, CheckList for death critical illness |

  @data
  Scenario Outline: To verify that validation message is display when user is no insurance available
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Verify the validation message
    Then Below validation message should be display on the screen
#  "No Records Available."
    Examples:
      | Domain               | Username  | Password   |
      | BFL.COM/ CC/ Partner | 202371761 | Bajaj@2080 |

  @pass @run
  Scenario Outline: To verify that dropdown is display when user have multiple Insurance Policies
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    Then "Policy No." Dropdown should be displayed on "Insurance details" page with available "Insurance"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                      |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Insurance Header, Nominee Details, Downloads |

  @pass @run
  Scenario Outline: To verify that  insurance  details is automatically refresh and display in all the relevant variables When a user selects a card from the dropdown
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Selects a different Policy from Policy Dropdown "IM6121043" ,then Page should automatically refresh and display the details of the selected Policy


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                      |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Insurance Header, Nominee Details, Downloads |

  @data
#  Scenario Outline: To verify that dropdown is display when user have multiple Nominee
#    Given User is logged in "<Domain>" "<Username>" for "<Password>"
#    When Click on Customer by search dropdown
#    And Click on Customer ID Number
#    And Enter the Customer ID  Number
#    And  Click on proceed CTA
#    And Verify the multiple Nominee
#    Then Dropdown should be display when user have multiple Nominee
#    Examples:
#      | Domain               | Username  | Password   |
#      | BFL.COM/ CC/ Partner | 202371761 | Bajaj@2080 |

    @pass @run
  Scenario Outline: To verify that user is able to view Downloads section with consist of the Reports
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    Then Below Documents "<Docs>" should be displayed under the "Downloads" section in "Insurance" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Docs                                                                                                                                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | BALIC claim for critical illness, Death Claim Form, FGI CI Claim Form, Future General Claim New Form, HDFC Claim Form, CheckList for death critical illness |

  @pass @run
  Scenario Outline: To verify that Click on PDF icon reports is  downloaded - BALIC claim for critical illness
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "BALIC claim for critical illness" report in "Downloads" Section
#    Then User should be redirected to "https://customer360uat.bajajfinserv.in/assets/download/Balicform.pdf" Page
    Then "Balicform.pdf" File should be downloaded

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that Click on PDF icon reports is  downloaded - Death Claim Form
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "Death Claim Form" report in "Downloads" Section
#    Then User should be redirected to "https://customer360uat.bajajfinserv.in/assets/download/Deathclaimform.pdf" Page
    Then "Deathclaimform.pdf" File should be downloaded

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that Click on PDF icon reports is  downloaded - FGI CI Claim Form
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "FGI CI Claim Form" report in "Downloads" Section
#    Then User should be redirected to "https://customer360uat.bajajfinserv.in/assets/download/FGIform.pdf" Page
    Then "FGIform.pdf" File should be downloaded

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that Click on PDF icon reports is  downloaded - Future General Claim New Form
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "Future General Claim New Form" report in "Downloads" Section
#    Then User should be redirected to "https://customer360uat.bajajfinserv.in/assets/download/FutureGeneralform.pdf" Page
    Then "FutureGeneralform.pdf" File should be downloaded

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that Click on PDF icon reports is  downloaded - HDFC Claim Form
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "HDFC Claim Form" report in "Downloads" Section
#    Then User should be redirected to "https://customer360uat.bajajfinserv.in/assets/download/HDFCform.pdf" Page
    Then "HDFCform.pdf" File should be downloaded

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that Click on PDF icon reports is downloaded - CheckList for death critical illness
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "CheckList for death critical illness" report in "Downloads" Section
    Then "checklistdeath.xls" File should be downloaded

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view CheckList for death critical illness
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "CheckList for death critical illness" report in "Downloads" Section
    And Verify "checklistdeath.xls" File is downloaded for death critical illness
    Then User should be able to view CheckList "<Checklist>" for death critical illness in the file "checklistdeath.xls"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Checklist                                                                                                                                  |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Set -1 : Documents, Set -2 : Nominee Documents (KYC of Nominee and deceased customer), Set -3 : Exceptional documents:, Additional Checks: |

  @pass @run
  Scenario Outline: To verify that user is able to view documents under checklist death critical illness
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "CheckList for death critical illness" report in "Downloads" Section
    And Verify "checklistdeath.xls" File is downloaded for death critical illness
    Then User should be able to view CheckList "<Checklist>" for death critical illness in the file "checklistdeath.xls"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Checklist                                                                                                                                                                                                                                                                                                                                                               |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Claimant Statement/Claim Form (For the respective product/Insurance Co.), Enrollment Form, Policy/COI NO, Life Assured Death Certificate- DC translation In English ,in case same is in any other language, Credit Account Statement/Foreclosure Letter/Finnone Simulation Report - (To be shared by Insurance Operations team post receiving all manadatory documents) |

  @pass @run
  Scenario Outline: To verify that user is able to view Nominee documents under checklist death critical illness
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "CheckList for death critical illness" report in "Downloads" Section
    And Verify "checklistdeath.xls" File is downloaded for death critical illness
    Then User should be able to view "Nominee Documents" under CheckList "<Checklist>" for death critical illness in the file "checklistdeath.xls"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Checklist                                                                                                                                                                                                                           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Nomine KYC (Adhar Card/Voter ID/DL/Ration Card), NEFT Details ( Printed Name and A/c no. on Bank Passbook or cancelled cheque ), In case of Accidental Death-, First Information Report, Post Mortem report/Panchanama/Final Report |

  @rerun
  Scenario Outline: To verify that user is able to view Exceptional documents  under checklist death critical illness
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "CheckList for death critical illness" report in "Downloads" Section
    And Verify "checklistdeath.xls" File is downloaded for death critical illness
    Then User should be able to view "Exceptional Documents" under CheckList "<Checklist>" for death critical illness in the file "checklistdeath.xls"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Checklist                                                                                                                                                                                                                                                                                                                       |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Required Nominee death certificate, Legal heir certificate from the court- Legal Heir Declaration cum NO Objection – Rs. 500/- stamp paper – signed by all legal heirs. Indemnity Bond – Rs.500/- stamp papers, Succession certificate (if any), Nominee Name change Form, KYC and clear copy of bank statement of new claimant |

  @pass @run
  Scenario Outline: To verify that user is able to view Additional Checks under checklist death critical illness
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "CheckList for death critical illness" report in "Downloads" Section
    And Verify "checklistdeath.xls" File is downloaded for death critical illness
    Then User should be able to view "Additional Checks" under CheckList "<Checklist>" for death critical illness in the file "checklistdeath.xls"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Checklist                                                                                                                                                                                                                                |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Kindly ensure clear copy of ID proofs & bank statement attached, All documents to be attested by nominee, Overwriting/alteration requires counter sinature, All documents need to have BFL seal along with signature of authorised staff |

  @pass @run
  Scenario Outline: To verify that user is able to view Investigation Guidelines details
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "CheckList for death critical illness" report in "Downloads" Section
    And Verify "checklistdeath.xls" File is downloaded for death critical illness
    Then User should be able to view "Investigation Guidelines" under Guidelines "<Guidelines>" for death critical illness in the file "checklistdeath.xls" under sheet "Investigation Guidelines & SLA"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Guidelines                                                                               |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Medical cases where death has occurred due to prolonged illness / disease, Suicide cases |

  @rerun
  Scenario Outline: To verify that user is able to view Death Certificate Verification
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7249024719" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Insurance" in Relations Overview
    And Clicks on Get details CTA of "Insurance" Relation - "IL3227607"
    Then User Should be redirected to the "Insurance" Details page "https://customer360uat.bajajfinserv.in/insurancedetails"
    And Click on PDF icon of "CheckList for death critical illness" report in "Downloads" Section
    And Verify "checklistdeath.xls" File is downloaded for death critical illness
    Then User should be able to view "Death Certificate Verification" under Guidelines "<Guidelines>" for death critical illness in the file "checklistdeath.xls" under sheet "Investigation Guidelines & SLA"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Guidelines                                                                                                                                                                                                                      |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Death Certificate with Date of death missing or tampered, Death Certificate with Date of Registration missing or tampered, Death Certificate with Registration number missing or tampered, Death Certificate with Name mismatch |




  