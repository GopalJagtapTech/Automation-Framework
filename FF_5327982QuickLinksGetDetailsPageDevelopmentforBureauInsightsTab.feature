Feature: FF_5327982 Quick Links Get Details Page Development for Bureau Insights Tab

  @pass @run
  Scenario Outline: To verify that User is able to view Bureau insight tab under Quick Link section
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
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that User is able to redirected to bureau insight page when click on Bureau insight tab
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
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that User is able to view given fields on Bureau insight page
    Given User is logged in "<Domain>" "<Username>" for "<Password>"  
    When Click on Customer by search drop down
    And Select Mobile Number
    And Enter Mobile Number
    And Click on proceed CTA
    And Click  Bureau Insight under Quick Link section
    Then User is able to view given fields on dashboard page:
#  Bureau field with drop down
#  Product field with drop down
#  Generate PDF CTA

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that data auto populate for Bureau drop down
    Given User is logged in "<Domain>" "<Username>" for "<Password>"  
    When Click on Customer by search drop down
    And Select Mobile Number
    And Enter Mobile Number
    And Click on proceed CTA
    And Click Bureau Insight under Quick Link section
    Then Data should be auto populated for Bureau drop down

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that User has 3 option for Product drop down when user select “CIBIL” in Bureau field
    Given User is logged in "<Domain>" "<Username>" for "<Password>"  
    When Click on Customer by search drop down
    And Select Mobile Number
    And Enter Mobile Number
#  And Click on proceed CTA 
    And Click Bureau Insight under Quick Link section
    And Select CIBIL in Bureau field
    And Select any from given option in product field
    Then User should be able to view below given options for Product drop down:
#  Scrub Info
#  CIBILCIR
#  Reporting details

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that given fields is appeared when user select Scrub Info option from Product field
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Scrub Info" option in Product Dropdown
    Then Below Menus "<Menus>" Should be displayed to the user on LHS of Bureau Insights page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Menus                                                                                                                       |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Customer Details, Address Details, Email Details, Contact Details, Enquiry Details, Identification Details, Account Details |

  @pass @run
  Scenario Outline: To verify mention field is displayed in Customer detail section
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Scrub Info" option in Product Dropdown
    And Clicks on LHS Option "Customer Details" in "BUREAU INSIGHTS" Details Page
    Then User should be able to view below details "<Details>" under "Customer Details" in Bureau Insights Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Name, Report Generation Date, Customer ID, Score |

  @pass @run
  Scenario Outline: To verify mention field is displayed in Address detail section
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Scrub Info" option in Product Dropdown
    And Clicks on LHS Option "Address Details" in "BUREAU INSIGHTS" Details Page
    Then User should be able to view below details "<Details>" under "Address Details" in Bureau Insights Page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Address Category, Residence Type, Address, State |

  @pass @run
  Scenario Outline: To verify mention field is displayed in Email detail section
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Scrub Info" option in Product Dropdown
    And Clicks on LHS Option "Email Details" in "BUREAU INSIGHTS" Details Page
    Then User should be able to view below details "<Details>" under "Email Details" in Bureau Insights Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Email   |

  @pass @run
  Scenario Outline: To verify mention field is displayed in Contact detail section
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Scrub Info" option in Product Dropdown
    And Clicks on LHS Option "Contact Details" in "BUREAU INSIGHTS" Details Page
    Then User should be able to view below details "<Details>" under "Contact Details" in Bureau Insights Page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Phone Type, Phone No, Phone Ext. |

  @pass @run
  Scenario Outline: To verify mention field is displayed in Identification detail section
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Scrub Info" option in Product Dropdown
    And Clicks on LHS Option "Identification Details" in "BUREAU INSIGHTS" Details Page
    Then User should be able to view below details "<Details>" under "Identification Details" in Bureau Insights Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | ID Type, ID Number |

  @pass @run
  Scenario Outline: To verify mention field is displayed in Enquiry detail section
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Scrub Info" option in Product Dropdown
    And Clicks on LHS Option "Enquiry Details" in "BUREAU INSIGHTS" Details Page
    Then User should be able to view below details "<Details>" under "Enquiry Details" in Bureau Insights Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                   |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Date Of Enquiry, Enquiry Purpose, Enquiry |

  @pass @run
  Scenario Outline: To verify mention field is displayed in Account detail section
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Scrub Info" option in Product Dropdown
    And Clicks on LHS Option "Account Details" in "BUREAU INSIGHTS" Details Page
    Then User should be able to view below details "<Details>" under "Account Details" in Bureau Insights Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Account Number, Account Type, Date Opened, Date Closed, Sanction Amount, Balance, Institution, Account Flag, Ownership Type, Overdue Amount, Date Past Due, Open, High Credit, Last Payment Date, Date Reported, Last Payment, Nominee, Write Off Amount, Written Off Principal Amount, Date Written Off, Settlement Amount, Payment Frequency, Actual Payment Amount, Interest Rate, Repayment Tenure, Date Sanctioned, Date Applied, Applied Amount, No Of Installments, Disbursed Amount, Installment Amount, Credit Limit, Cash Limit, Collateral Value, Relation Info Type, Client Name, Loan Category, Loan Purpose, Loan Cycle Id, Key Person, Reason, Dispute Code, Collateral Type, Date For Error Code, Error Code, Date For Error Dispute Remark, Error Dispute Remarks Code1, Error Dispute Remarks Code2, Reporting DateTime, Original Payment History String, Payment History String, Original Asset Classification String, Asset Classification History String, Original Suit Field String, Suit Field String, Payment Start Date, Payment End Date, Suit Field Willful Default Status, Credit Facility Status, Latest Asset Classification, Latest Reported Month For Asset Classification, Latest Account Status, Latest Reported Month For Account Status, Sector, CIBIL Remarks Code, Dispute Remarks Code |

  @data
  Scenario Outline: To verify that given fields is appeared when user select CIBILCIR option from Product field
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
    And Select CIBILCIR option in product field
    Then Below details should be display in tabular format:
#  Customer Details
#  Address Details
#  Email Details
#  Contact Details
#  Identification Details
#  Enquiry Details
#  Account Details

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify mention field is displayed in Customer detail section
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
    And Select CIBILCIR option in product field
    Then Below mention field should be display:
#  Name
#  Report Generation Date
#  Customer ID
#  Score

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify mention field is displayed in Address detail section
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
    And Select CIBILCIR option in product field
    Then Below mention field should be display:
#  ADDRESS CATEGORY
#  RESIDENCE TYPE
#  ADDRESS
#  STATE

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify mention field is displayed in Email detail section
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
    And Select CIBILCIR option in product field
    Then Below mention field should be display:
#  EMAIL ID

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify mention field is displayed in Contact detail section

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
    And Select CIBILCIR option in product field
    Then Below mention field should be display:
#  PHONE TYPE
#  PHONE NO.
#  PHONE EXT.

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify mention field is displayed in Identification detail section
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
    And Select CIBILCIR option in product field
    Then Below mention field should be display:
#  ID TYPE
#  ID NUMBER

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify mention field is displayed in Enquiry detail section
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
    And Select CIBILCIR option in product field
    Then Below mention field should be display:

#  DATE OF ENQUIRY
#  ENQUIRY PURPOSE
#  ENQUIRY

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify mention field is displayed in Account detail section
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
    And Select CIBILCIR option in product field
#  ThenBelow mention field should be display:

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that Address details is masked for Service Non PII & Service Non PII Non BFL profiles
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
    And Select CIBILCIR option in product field
    Then Address details should be masked for Service Non PII & Service Non PII Non BFL

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that User is able to download report when clicks on Generate PDF cta
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
    And Select CIBILCIR option in product field
    And Click on Generate PDF cta
    Then User should be able to download a full report in PDF format for offline review and archiving.

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that validation message is appearing if data not available when clicks on Generate PDF cta
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
    And Select CIBILCIR option in product field
    And Click on Generate PDF cta
    Then Validation message should display:
#  “No Data available”

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that error message and Try again option appears when PDF not able to download
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
    And Select CIBILCIR option in product field
    And Click on Generate PDF cta
    Then Error message & option to Try again should be display

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that User is able to view fields for Process and Ownership Type when user selects Reporting Detail in Product field
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Reporting Details" option in Product Dropdown
    Then User should be able to view additional fields for Process and Ownership Type will become available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that User has option for Process drop down
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Reporting Details" option in Product Dropdown
    Then User should be able to view below given options "Consumer Reporting, Commercial Reporting" under Process Dropdown in Bureau Insights Page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that User has option for Ownership Type drop down
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Reporting Details" option in Product Dropdown
    Then User should be able to view below given options "<Options>" under Ownership Type Dropdown in Bureau Insights Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                 |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | All, Applicant, Co-Applicant, Guarantor |

  @pass @run
  Scenario Outline: To verify that data is appearing into 2 headers given below - Consumer Reporting - All
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Reporting Details" option in Product Dropdown
    And Click on "Consumer Reporting" option in Process Dropdown
    And Click on "All" option in Ownership Type Dropdown
    Then Below Menus "<Opts>" Should be displayed to the user on LHS of "BUREAU INSIGHTS" Details page
#    Then User should be able to view relevant data on the screen in a tabular format, under two distinct headers:

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Opts                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Data Reported, Rejection Data |

  @pass @run
  Scenario Outline: To verify mention field is displayed in Data Reported section
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Reporting Details" option in Product Dropdown
    And Click on "Consumer Reporting" option in Process Dropdown
    And Click on "All" option in Ownership Type Dropdown
    And Clicks on LHS Option "Data Reported" in "BUREAU INSIGHTS" Details Page
    Then User should be able to view below details "<Details>" under "Data Reported" in Bureau Insights Page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Reported Date, LAN, Customer Id, Ownership Indicator, Customer Name, DOB, Gender, ID Type 1, ID Number 1, Telephone Number, Email Address, Customer Address, State Code, Pin Code, Address Category, Account Type, Account Open Date, Last Payment Date, Closed Date, High Credit Sanctioned Amount, Current Balance, Amount Overdue, Days Past Due, Credit Facility, Write Off Amount Total, Write Off Amount Principal, Settlement Amount, CIBIL, CRIF, EXPERIAN, EQUIFAX |

  @pass @run
  Scenario Outline: To verify mention field is displayed in Rejection section
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Reporting Details" option in Product Dropdown
    And Click on "Consumer Reporting" option in Process Dropdown
    And Click on "All" option in Ownership Type Dropdown
    And Clicks on LHS Option "Rejection Data" in "BUREAU INSIGHTS" Details Page
    Then User should be able to view below details "<Details>" under "Rejection Data" in Bureau Insights Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                                                                |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Bureau, Reported Date, Customer Id, LAN, Ownership Type, Reject Reason, Data Submitted |


  @pass @run
  Scenario Outline: To verify that user is able to switch Product anytime from drop down
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Reporting Details" option in Product Dropdown
    And Click on "Consumer Reporting" option in Process Dropdown
    And Click on "All" option in Ownership Type Dropdown
    And Click on "Scrub Info" option in Product Dropdown
    Then Below Menus "<Menus>" Should be displayed to the user on LHS of Bureau Insights page
    Then User should be able to switch between products from selection dropdown


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Menus                                                                                                                       |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Customer Details, Address Details, Email Details, Contact Details, Enquiry Details, Identification Details, Account Details |



########PDF
  @pass @run
  Scenario Outline: To verify that user is able to generate PDF - "<Tab>"
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
    And Click on "Cibil" option in Bureau Dropdown
    And Click on "Scrub Info" option in Product Dropdown
    And Clicks on LHS Option "<Tab>" in "BUREAU INSIGHTS" Details Page
    And Clicks on Generate Pdf Button in Bureau Insights Page
    Then Verify "bureau-details.pdf" file should be downloaded

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Tab                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Customer Details       |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Address Details        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Email Details          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Contact Details        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Enquiry Details        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Identification Details |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Account Details        |








