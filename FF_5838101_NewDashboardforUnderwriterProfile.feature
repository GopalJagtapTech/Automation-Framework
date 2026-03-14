Feature: FF _5838101: New Dashboard for Underwriter Profile

  @pass  
  Scenario Outline: To verify that Tabs are displayed under Underwriting Dashboard Page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Below Tabs "<Tabs>" should be displayed under Underwriting Dashboard Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | Tabs                                                                                                               |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Tradelines Overview#Other Relations#Identification#SICR#Offers#Bureau Insight#Communication Trail#Service Requests |

  @pass  
  Scenario Outline: To verify that options displayed under Tradeline details tab
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Below SubTabs "<SubTabs>" should be displayed under "Tradelines Overview" Tab in Underwriting Dashboard Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | SubTabs                                       |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Live Tradelines#Cancelled & Closed Tradelines |

  @pass  
  Scenario Outline: To verify that details displayed under live tradeline details tab
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Live Tradelines" Subtab under Underwriting Dashboard Page
    Then Below options "<Options>" should be displayed under liveTradeline  tab in tabular format
    And "Report" icon in "SOA" column should be displayed under "live-tradeline" table
    And "Report" icon in "RPS" column should be displayed under "live-tradeline" table
    And "Report" icon in "PDC" column should be displayed under "live-tradeline" table
    And "Report" icon in "Scanned DOcs" column should be displayed under "live-tradeline" table

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | Options                                                                                                                                                                  |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Aggrement number#Deal ID#Product category#Disbursal date#Loan Amount#POS#MOB#DPD#Facility Status#Restructure Status#Dropline Loan Amount#Member#SOA#RPS#PDC#Scanned DOcs |

  @pass  
  Scenario Outline: To verify that details displayed under Cancelled & closed  tradeline details tab

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Cancelled & Closed Tradelines" Subtab under Underwriting Dashboard Page
    Then Below options "<Options>" should be displayed under Cancelled & closed tradeline details tab in tabular format
    And "Report" icon in "SOA" column should be displayed under "closed-tradeline" table
    And "Report" icon in "RPS" column should be displayed under "closed-tradeline" table
    And "Report" icon in "PDC" column should be displayed under "closed-tradeline" table
    And "Report" icon in "Scanned DOcs" column should be displayed under "closed-tradeline" table

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | Options                                                                                                                                                            |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Aggrement number#Deal ID#Product category#Disbursal date#Loan Amount#Loan Status#MOB#DPD#Facility Status#Restructure Status#is foreclosed#SOA#RPS#PDC#Scanned DOcs |

    @data
  Scenario Outline: To verify that details displayed under Tradeline details tab - Co Applicant
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    When Click on  Tradeline details tab
    And Click on  liveTradeline details tab

    Then Below options should be displayed underCo-applicant details tab
#  1.Agreement Number
#  2.Source System
#  3.Product ID
#  4.Product Type
#  5.Loan Variant
#  6.Loan Disbursal Date
#  7.Dropline Loan Amount
#  9.Utilized Loan Amount
#  10.Repayment Bank A/c Name
#  11.MOB Served
#  12.Loan Closure Date
#  13.Deal ID
#  14.Total Loan Amount
#  15.Instalment Amount
#  16.Repayment Bank A/c No.
#  17.Flexi Flag
#  18.Bucket
#  19.POS
#  20.Loan Status
#  21.Overdue Amount
#  22.Penalty Due
#  23.BCC Due
#  24.Interest Overdue
#  25.Principle Overdue
#  26.Other Due
#  28.Bounce Count
#  29.Updated Start Date
#  30.Updated End Date
#  31.Technical Bounce Flag
#  32.First EMI Date
#  33.Last EMI Date
#  34.Net Tenure
#  35.Gross Tenure
#  36.Balance Tenure
#  37.Parent/Child Flag
#  38.Credit Facility Status
#  39.Credit Facility Remark
#  40.Credit Facility Date
#  41.Written-off/Settlement/Repossessed Amount
#  42.Restructure Status
#  43.Restructure Amount
#  44.Restructure Date
#  45.Is foreclosed
#  46.Sale Data

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

      @data
  Scenario Outline: To verify that details displayed under Co-applicant details tab
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    When Click on Co-applicant details tab
    Then Below options should be displayed underCo-applicant details tab
#  1.Applicant Name
#  2.DOB
#  3.PAN
#  4.Gender
#  5.Applicant Type
#  6.Address Type
#  7.Address
#  9.Mobile Number
#  10.Email ID

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline: To verify that dashboard page is refreshed according to selected customer ID
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "8800404987" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Dropdown should be displayed when customer having multiple ID's under Underwriting Dashboard
    Then Dashboard page should be refreshed according to selected customer ID "150045665"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline: To verify that dropdown is displayed when customer having multiple ID's
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "8800404987" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Dropdown should be displayed when customer having multiple ID's under Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section, Applicant Name field is visible
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Below field "Applicant Name" should be visible in "Applicant Details" section in Underwriting Dashboard
#    Then In Applicant Details section, Applicant Name should be visible

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section, Date of Birth field is visible
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "I"
    And Below field "Date of Birth" should be visible in "Applicant Details" section in Underwriting Dashboard
    Then DOB header & field value should be showcased in masked format


    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @data @pass  
  Scenario Outline:To verify that in Applicant Details section, Date of Incorporation field is visible
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "447129516" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    Then Dashboard page should be refreshed according to selected customer ID "447129516"
    And Verify If Individual Corporate Flag is "C"
    And Below field "Date of Incorporation" should be visible in "Applicant Details" section in Underwriting Dashboard

#    Then If Individual Corporate flag = 'C' then Date of Incorporation  Header &value of that should be showcased in masked format

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @fail @pass    ## No masked
  Scenario Outline:To verify that in Applicant Details section,Age  field is visible
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "I"
    And Below field "Age" should be visible in "Applicant Details" section in Underwriting Dashboard

#      Then Age Header & its value should be shown in masked format

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section,Age field is hidden
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "447129516" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    Then Dashboard page should be refreshed according to selected customer ID "447129516"
    And Verify If Individual Corporate Flag is "C"
    Then "Age" should be hidden in Applicant Details

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section,Gender field  is visible
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "I"
    And Below field "Gender" should be visible in "Applicant Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section,Gender field is hidden
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "447129516" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    Then Dashboard page should be refreshed according to selected customer ID "447129516"
    And Verify If Individual Corporate Flag is "C"
    Then "Gender" should be hidden in Applicant Details

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section,Customer Type field is visible
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Below field "Customer Type" should be visible in "Applicant Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section,Individual Corporate Flag field is visible
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Below field "Individual Corporate Flag" should be visible in "Applicant Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section,Father Name field is visible - I
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "I"
    And Below field "Fathers Name" should be visible in "Applicant Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section,Father Name field is hidden

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "447129516" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    Then Dashboard page should be refreshed according to selected customer ID "447129516"
    And Verify If Individual Corporate Flag is "C"
    Then "Fathers Name" should be hidden in Applicant Details

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section,spouse Name field is visible
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "I"
    And Below field "Spouse Name" should be visible in "Applicant Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section,spouse Name field is hidden
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "447129516" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    Then Dashboard page should be refreshed according to selected customer ID "447129516"
    And Verify If Individual Corporate Flag is "C"
    Then "Spouse Name" should be hidden in Applicant Details

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section,natureOfBusiness field is not visible - Individual Corporate flag = 'I'
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "I"
    Then "Nature Of Business" should be hidden in Applicant Details

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Applicant Details section,natureOfBusiness field is visible - Individual Corporate flag = 'C'
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "447129516" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    Then Dashboard page should be refreshed according to selected customer ID "447129516"
    And Verify If Individual Corporate Flag is "C"
    And Below field "Nature Of Business" should be visible in "Applicant Details" section in Underwriting Dashboard


    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |


  @pass  
  Scenario Outline:To verify the Address Details section,that all fields are visible
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    Then Below field "<Fields>" should be visible in "Address Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | Fields                                              |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Mobile#Email#Address#Landmark#Address Type#Pin Code |

  @pass  
  Scenario Outline:To verify the Address Details section - Masked Format
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    Then Below field "<Fields>" should be visible in "Address Details" section in Underwriting Dashboard
    And Verify Mobile Number Masking Pattern in Address Details in Underwriting Dashboard
    And Verify Email ID Masking Pattern in Address Details in Underwriting Dashboard
    And Verify Address Masking Pattern in Address Details in Underwriting Dashboard


    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | Fields                                              |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Mobile#Email#Address#Landmark#Address Type#Pin Code |

  @pass  
  Scenario Outline:To verify the Address Details section,that address is visible in correct format
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Address should be concate the address line1+2+3,CityName and State name and partially masked

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass  
  Scenario Outline:To verify that in Loan Summary section,all field are visible
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    Then Below fields "<Fields>" should be visible under Loan Summary section for Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | Fields                             |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Total Loan#Closed Loans#Live Loans |

  @pass  
  Scenario Outline:To verify that in Credit Portfolio section,all field are visible
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Below fields "<Fields>" should be visible under Credit Portfolio section


    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | Fields                                                                        |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Total POS#DELINQUENCY#Bucket#Bounce count#credit score#credit Facility status |

  @pass  
  Scenario Outline:To verify that in Credit Portfolio section, Credit Facility Status is shown write off
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Agreement Number" Option from Search Dropdown
    And Enters "08ESPFGT540997" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And If any loan is write off then Credit Facility Status should be shown as "WRITEOFF".

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @data
  Scenario Outline:To verify that in Credit Portfolio section, Credit Facility Status is shown Settled
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And If any loan is "Settled" then Credit Facility Status should be shown as "Settled".

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @data
  Scenario Outline:To verify that in Credit Portfolio section, Credit Facility Status  is shown Repossession
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And If any loan is "Repossession" then Credit Facility Status should be shown as "Repossession".

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

