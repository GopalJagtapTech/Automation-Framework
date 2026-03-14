Feature: FF_6273915_Profile creation for CL Underwriter

  @pass  @run1 
  Scenario Outline: To verify that use is able to login Underwriting profile
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Commercial Lending"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @fail
  Scenario Outline: To verify that options displayed under search customer by dropdown
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Commercial Lending"
    And Verify User is able to view Below Options "<Options>" for Search By Dropdown

    Examples:
      | Domain | Username | Password       | Url                                            | Options                                                                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | Customer ID#Agreement Number#Fixed Deposit Number#FD Application Number#FD Reference Number#Bank Account Number |

  @pass  @run1
  Scenario Outline: To verify that on click of Proceed CTA user redirected to dashboard page after selecting an option and entering the value under search customer by dropdown
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
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass  @run1
  Scenario Outline: To verify that details displayed under applicant details widget - Individual Corporate Flag - "I"
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
    And Verify If Individual Corporate Flag is "I"
    And Below field "<Fields>" should be visible in "Applicant Details" section in Commercial Lending Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Fields                                                                                                               |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Customer ID#Applicant Name#Date of Birth#Gender#Individual Corporate Flag#Age#Customer Type#Fathers Name#Spouse Name |

  @pass  @run1
  Scenario Outline:To verify the Address Details section,that all fields are visible -Individual Corporate Flag - "I"
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Commercial Lending"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "I"
    Then Below field "<Fields>" should be visible in "Address Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Fields                                              |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Mobile#Email#Address#Landmark#Address Type#Pin Code |

  @pass  @run1
  Scenario Outline:To verify the Address Details section - Masked Format  -Individual Corporate Flag - "I"
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Commercial Lending"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "I"
    Then Below field "<Fields>" should be visible in "Address Details" section in Underwriting Dashboard
    And Verify Mobile Number Masking Pattern in Address Details in Underwriting Dashboard
    And Verify Email ID Masking Pattern in Address Details in Underwriting Dashboard
    And Verify Address Masking Pattern in Address Details in Underwriting Dashboard


    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Fields                                              |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Mobile#Email#Address#Landmark#Address Type#Pin Code |

  @pass  @run1
  Scenario Outline:To verify the Address Details section,that address is visible in correct format  -Individual Corporate Flag - "I"
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Commercial Lending"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "I"
    And Address should be concate the address line1+2+3,CityName and State name and partially masked

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |


  @pass  @run1
  Scenario Outline: To verify that details displayed under applicant details widget - Individual Corporate Flag - "C"
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "85748456" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "C"
    And Below field "<Fields>" should be visible in "Applicant Details" section in Commercial Lending Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Fields                                                                                                      |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Customer ID#Applicant Name#Date of Incorporation#Individual Corporate Flag#Customer Type#Nature Of Business |

  @pass  @run1
  Scenario Outline:To verify the Address Details section,that all fields are visible -Individual Corporate Flag - "C"
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Commercial Lending"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "85748456" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "C"
    Then Below field "<Fields>" should be visible in "Address Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Fields                                              |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Mobile#Email#Address#Landmark#Address Type#Pin Code |

  @pass  @run1
  Scenario Outline:To verify the Address Details section - Masked Format  -Individual Corporate Flag - "C"
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Commercial Lending"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "85748456" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "C"
    Then Below field "<Fields>" should be visible in "Address Details" section in Underwriting Dashboard
    And Verify Mobile Number Masking Pattern in Address Details in Underwriting Dashboard
    And Verify Email ID Masking Pattern in Address Details in Underwriting Dashboard
    And Verify Address Masking Pattern in Address Details in Underwriting Dashboard


    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Fields                                              |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Mobile#Email#Address#Landmark#Address Type#Pin Code |

  @pass  @run1
  Scenario Outline:To verify the Address Details section,that address is visible in correct format  -Individual Corporate Flag - "C"
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Commercial Lending"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "85748456" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "C"
    And Address should be concate the address line1+2+3,CityName and State name and partially masked

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @data
  Scenario Outline: To verify that dropdown is displayed when customer is having multiple ID’s and page get refresh
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
    Then dropdown should be  displayed when  customer is having multiple ID’s and page get refresh
    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass  @run1
  Scenario Outline: To verify that If  "Individual Corporate flag = 'I' then DOB header & field value is displayed
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
    And Verify If Individual Corporate Flag is "I"
    And Below field "Date of Birth" should be visible in "Applicant Details" section in Underwriting Dashboard
    Then DOB header & field value should be showcased in masked format

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass  @run1
  Scenario Outline: To verify that If  "Individual Corporate flag = 'I' then Gender Header & its value  is displayed
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
    And Verify If Individual Corporate Flag is "I"
    And Below field "Gender" should be visible in "Applicant Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass  @run1
  Scenario Outline: To verify that If Individual Corporate flag = 'C' then Gender field is  hidden
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "85748456" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "C"
    Then "Gender" should be hidden in Applicant Details

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass  @run1
  Scenario Outline: To verify that Individual Corporate flag = 'I' then Father Name Header & its value is  displayed
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
    And Verify If Individual Corporate Flag is "I"
    And Below field "Fathers Name" should be visible in "Applicant Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass  @run1
  Scenario Outline: To verify that If  "Individual Corporate flag = 'I' then Spouse Name Header & its value is displayed
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
    And Verify If Individual Corporate Flag is "I"
    And Below field "Spouse Name" should be visible in "Applicant Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass  @run1
  Scenario Outline: TTo verify that If Individual Corporate flag = 'C' then Spouse Name field needs to be hidden
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "85748456" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "C"
    Then "Spouse Name" should be hidden in Applicant Details

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass  @run1
  Scenario Outline: To verify that If  "Individual Corporate flag = 'C' then Nature of Business Header & its value
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "85748456" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify If Individual Corporate Flag is "C"
    And Below field "Nature Of Business" should be visible in "Applicant Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass  @run1
  Scenario Outline: To verify that If Individual Corporate flag = 'I' then Nature of Business field needs to be hidden
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
    And Verify If Individual Corporate Flag is "I"
    Then "Nature Of Business" should be hidden in Applicant Details

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass3
  Scenario Outline: To verify that fields displayed in masking form
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
    And Verify Mobile Number Masking Pattern in Address Details in Underwriting Dashboard
    And Verify Email ID Masking Pattern in Address Details in Underwriting Dashboard
    And Verify Address Masking Pattern in Address Details in Underwriting Dashboard
#  Date of Birth/Date of Incorporation
#  Age
#  Mobile
#  Email
#  Address -(Partial mask)

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass3
  Scenario Outline:To verify that details displayed under address  details widget
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
    Then Below field "<Fields>" should be visible in "Address Details" section in Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Fields                                              |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Mobile#Email#Address#Landmark#Address Type#Pin Code |

  @pass3
  Scenario Outline:To verify that details displayed under Loan Summary
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
    Then Below fields "<Fields>" should be visible under Loan Summary section for Underwriting Dashboard

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Fields                             |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Total Loan#Closed Loans#Live Loans |

  @pass3
  Scenario Outline:To verify that details displayed under Credit Portfolio
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
    And Below fields "<Fields>" should be visible under Credit Portfolio section

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Fields                                                                        |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Total POS#DELINQUENCY#Bucket#Bounce count#credit score#credit Facility status |

  @pass3
  Scenario Outline: To verify that user is able to view tradeline overview option is preselected
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
    Then User should be able to view tradeline overview option is preselected

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass3
  Scenario Outline: To verify that options displayed under tradeline overview
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
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Below SubTabs "<SubTabs>" should be displayed under "Tradelines Overview" Tab in Underwriting Dashboard Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | SubTabs                                       |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Live Tradelines#Cancelled & Closed Tradelines |

  @pass3
  Scenario Outline: To verify that details displayed under Live tradeline
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
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Live Tradelines" Subtab under Underwriting Dashboard Page
    Then Below options "<Options>" should be displayed under liveTradeline  tab in tabular format
    And "Report" icon in "SOA" column should be displayed under "live-tradeline" table
    And "Report" icon in "RPS" column should be displayed under "live-tradeline" table
    And "Report" icon in "PDC" column should be displayed under "live-tradeline" table
    And "Report" icon in "Scanned DOcs" column should be displayed under "live-tradeline" table

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Options                                                                                                                                                                  |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Aggrement number#Deal ID#Product category#Disbursal date#Loan Amount#POS#MOB#DPD#Facility Status#Restructure Status#Dropline Loan Amount#Member#SOA#RPS#PDC#Scanned DOcs |

  @pass3
  Scenario Outline: To verify that details displayed under Cancelled & Closed Loans
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
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Cancelled & Closed Tradelines" Subtab under Underwriting Dashboard Page
    Then Below options "<Options>" should be displayed under Cancelled & closed tradeline details tab in tabular format
    And "Report" icon in "SOA" column should be displayed under "closed-tradeline" table
    And "Report" icon in "RPS" column should be displayed under "closed-tradeline" table
    And "Report" icon in "PDC" column should be displayed under "closed-tradeline" table
    And "Report" icon in "Scanned DOcs" column should be displayed under "closed-tradeline" table

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Options                                                                                                                                                            |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Aggrement number#Deal ID#Product category#Disbursal date#Loan Amount#Loan Status#MOB#DPD#Facility Status#Restructure Status#is foreclosed#SOA#RPS#PDC#Scanned DOcs |

  @pass3
  Scenario Outline: To verify that details displayed under identification
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
    And Clicks on "Identification" tab under Underwriting Dashboard Page
    And Verify the details displayed under Identification Tab in Underwriting Dashboard Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass3
  Scenario Outline: To verify the Customer Redirection after clicking on SICR
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
    And Clicks on "SICR" tab under Underwriting Dashboard Page
    And User should be redirected to "https://service360uat.bajajfinserv.in/sicr" Url in New Tab

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass4
  Scenario Outline: To verify the Customer Redirection after clicking on Communication Trail Tab
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
    And Clicks on "Communication Trail" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/commtrailviewmore" Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass4
  Scenario Outline: To verify the Customer Redirection after clicking on Service Requests Tab
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
    And Clicks on "Service Requests" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/servicereqviewall" Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass4
  Scenario Outline: To verify the Customer Redirection after clicking on Cibil Trigger Tab
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
    And Clicks on "Cibil Trigger" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/cibiltriggers" Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass4
  Scenario Outline: To verify the Customer Redirection after clicking on Covenant Details Tab
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
    And Clicks on "Covenant Details" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/covenantdetails/covenantenquiry" Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @pass4
  Scenario Outline: To verify the Menus displayed under Covenant Details Page
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
    And Clicks on "Covenant Details" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/covenantdetails/covenantenquiry" Page
    Then Below Menus "<Menus>" Should be displayed to the user on LHS of "Agreement" Details page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Menus                                                                                                   |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Covenant Setup Docs Details, Basic Maintainence Details, CAM Enquiry Docs Details, Collateral Documents |

  @data4
  Scenario Outline: To verify the Details displayed under Covenant Enquiry Table - Covenant Details Page
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
    And Clicks on "Covenant Details" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/covenantdetails/covenantenquiry" Page
    And User should be able to view below details under Covenant Enquiry "Covenant Enquiry"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @data4
  Scenario Outline: To verify the Details displayed under Covenant Enquiry Table - Covenant Details Page
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
    And Clicks on "Covenant Details" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/covenantdetails/covenantenquiry" Page
    And User should be able to view below details under Covenant Enquiry "Covenant Enquiry"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @data4
  Scenario Outline: To verify the Details displayed under Basic Maintainence Details Table - Covenant Details Page
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
    And Clicks on "Covenant Details" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/covenantdetails/covenantenquiry" Page
    And Clicks on LHS Option "Basic Maintainence Details" in "Covenant" Details Page
    And User should be able to view below details under Basic Maintainence Details "Basic Maintainence Details"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

  @data4
  Scenario Outline: To verify the Details displayed under CAM Enquiry Docs Details Table - Covenant Details Page
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
    And Clicks on "Covenant Details" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/covenantdetails/covenantenquiry" Page
    And Clicks on LHS Option "CAM Enquiry Docs Details" in "Covenant" Details Page
    And User should be able to view below details under CAM Enquiry Docs Details "CAM Enquiry Docs Details"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

    @data
  Scenario Outline: To verify the Details displayed under Collateral Documents Table - Covenant Details Page
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
    And Clicks on "Covenant Details" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/covenantdetails/covenantenquiry" Page
    And Clicks on LHS Option "Collateral Documents" in "Covenant" Details Page
    And User should be able to view below details under Collateral Documents "Collateral Documents"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |



    ############Agreement Details Page

  @pass5
  Scenario Outline: To verify that Menus displayed under tradeline details - Agreement Details Page
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
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Aggrement number" - "P402PSP8029669" in "Live Tradelines" Tab
    Then User Should be redirected to the "Agreement" Details page "https://customer360uat.bajajfinserv.in/agreementdetails/tradelinedetails"
    Then Below Menus "<Menus>" Should be displayed to the user on LHS of "Agreement" Details page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Menus                                                                               |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Tradeline Details, Co-Applicant Details, Assets and Property, EMI Status, DEBT MGMT |

  @pass5
  Scenario Outline: To verify that details displayed under Sourcing Information - Agreement Details Page
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
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Aggrement number" - "P402PSP8029669" in "Live Tradelines" Tab
    Then User Should be redirected to the "Agreement" Details page "https://customer360uat.bajajfinserv.in/agreementdetails/tradelinedetails"
    And Below Options "<Options>" should be displayed under the "Sourcing Information" section in "Agreement" Details Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Options                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Agreement Number, Source System, Product ID, Product Type, Loan Variant, Loan Disbursal Date, Dropline Loan Amount, Utilized Loan Amount, Repayment Bank A/c Name, MOB Served, Loan Closure Date, Deal ID, Total Loan Amount, Instalment Amount, Repayment Bank A/c No., Flexi Flag, Bucket, POS, Loan Status, Overdue Amount, Penalty Due, BCC Due, Interest Overdue, Principal Overdue, Other Due, DPD Flag, Bounce Count, Updated Start Date, Updated End Date, Technical Bounce Flag, First EMI Date, Last EMI Date, Net Tenure, Gross Tenure, Balance Tenure, Parent/Child Flag, Credit Facility Status, Credit Facility Remark, Credit Facility Date, Written-off/Settlement/Repossessed Amount, Restructure Status, Restructure Amount, Restructure Date, Is Foreclosed, Sale Data |

    @pass5
  Scenario Outline: To verify the masked format for Repayment Bank A/c No. - Sourcing Information
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
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Aggrement number" - "P402PSP8029669" in "Live Tradelines" Tab
    Then User Should be redirected to the "Agreement" Details page "https://customer360uat.bajajfinserv.in/agreementdetails/tradelinedetails"
    And Only last four digit of account number should be displayed under Repayment Bank Ac No under Sourcing Information

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

      @fail
  Scenario Outline: To verify the Details displayed under - Assets and Property
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
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Aggrement number" - "P402PSP8029669" in "Live Tradelines" Tab
    Then User Should be redirected to the "Agreement" Details page "https://customer360uat.bajajfinserv.in/agreementdetails/tradelinedetails"
    And Clicks on LHS Option "Assets and Property" in "Agreement" Details Page
    Then Below Options "<Options>" should be displayed under the "Assets and Property" section

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Options           |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Model, Asset make |

        @pass5
  Scenario Outline: To verify on click of DEBT MGMT in Agreement Details Page
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
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Aggrement number" - "P402PSP8029669" in "Live Tradelines" Tab
    Then User Should be redirected to the "Agreement" Details page "https://customer360uat.bajajfinserv.in/agreementdetails/tradelinedetails"
    And Clicks on LHS Option "DEBT MGMT" in "Agreement" Details Page
    Then Verify User redirected to "https://report.bajajfinserv.in/CollectionsReport" Url in New Tab

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard |

@pass5
  Scenario Outline: To verify that details displayed under Co-applicant Details
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "85748456" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Aggrement number" - "P402AFL1824806" in "Live Tradelines" Tab
    Then User Should be redirected to the "Agreement" Details page "https://customer360uat.bajajfinserv.in/agreementdetails/tradelinedetails"
    And Clicks on LHS Option "Co-Applicant Details" in "Agreement" Details Page
    And Below Options "<Options>" should be displayed under the "Co-Applicant" section in Agreement Details Page
    And Customer Id Selection dropdown is to be displayed for Co-Applicant Section

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Options                                                                                                               |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Customer id, Applicant Name, DOB, Gender, Marital Status, PAN, ADDRESS, ADDRESS TYPE, MOBILE, EMAIL, PHONE-1, PHONE-2 |

  @pass5
  Scenario Outline: To verify that details displayed under EMI Status
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "85748456" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Aggrement number" - "P402AFL1824806" in "Live Tradelines" Tab
    Then User Should be redirected to the "Agreement" Details page "https://customer360uat.bajajfinserv.in/agreementdetails/tradelinedetails"
    And Clicks on LHS Option "EMI Status" in "Agreement" Details Page
    Then User should be able to view below details under EMI Status "EMI Status"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Options                                                                                                               |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Customer id, Applicant Name, DOB, Gender, Marital Status, PAN, ADDRESS, ADDRESS TYPE, MOBILE, EMAIL, PHONE-1, PHONE-2 |

    @pass5
  Scenario Outline: To verify that Account Number is masked under EMI Status Table
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "85748456" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Aggrement number" - "P402AFL1824806" in "Live Tradelines" Tab
    Then User Should be redirected to the "Agreement" Details page "https://customer360uat.bajajfinserv.in/agreementdetails/tradelinedetails"
    And Clicks on LHS Option "EMI Status" in "Agreement" Details Page
    Then User should be able to view below details under EMI Status "EMI Status"
    And Account Number in EMI Status Table should be masked

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Options                                                                                                               |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Customer id, Applicant Name, DOB, Gender, Marital Status, PAN, ADDRESS, ADDRESS TYPE, MOBILE, EMAIL, PHONE-1, PHONE-2 |

      @pass5
  Scenario Outline: To verify that Page is refreshed on selectiong of New Agreement Number from Dropdown
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "85748456" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on "Tradelines Overview" tab under Underwriting Dashboard Page
    And Clicks on "Aggrement number" - "P402AFL1824806" in "Live Tradelines" Tab
    Then User Should be redirected to the "Agreement" Details page "https://customer360uat.bajajfinserv.in/agreementdetails/tradelinedetails"
    And Verify Page is refreshed on selection of another Agreement Number "P402ACG2120516"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                         | Options                                                                                                               |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/commerciallendingdashboard | Customer id, Applicant Name, DOB, Gender, Marital Status, PAN, ADDRESS, ADDRESS TYPE, MOBILE, EMAIL, PHONE-1, PHONE-2 |










