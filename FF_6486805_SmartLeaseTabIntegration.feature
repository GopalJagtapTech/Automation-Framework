Feature: FF_User Story 6486805: Smart Lease Tab Integration in C-360

  Scenario Outline: To verify that user is able to view customer360 portal
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And Verify the   page

    Then User should be able to view customer360 portal on the screen

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is able to view select domain field
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And Verify the  Domain

    Then User should be able to view select domain field

    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline: To verify that user is able to click on select domain field
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And Verify the  Domain
    Then User should be  able to click on select domain field
  Below select domain should be display
  1.BFL
  2.Partner/ CC
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline: To verify that user is able to enter ADID
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Enter the ADID
    Then User should be  able to enter ADID
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline: To verify that user is able to Enter the password on password field
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Enter the password
    Then User should be able to Enter the password on password field
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline: To verify that user is able to view Login CTA
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Click on Login CTA
    Then User should be able to view Login CTA
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline: To verify user is able  to fill Select domain ,customername,password field and Login  CTA  get enable
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Verify the Fill field
    Then User should be able  to fill Select domain ,customername,password field and Login  CTA  get enable
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that first OTP is triggered on user  email
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Verify the  OTP field

    Then First OTP should be triggered on user  email
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view OTP screen after OTP is triggered
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Verify the  OTP field
    Then User should be able to view OTP screen with below details:
  1.Enter one time password (OTP) headertext
  2.Change hyperlink
  3.Textbox
  4.Submit CTA
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify OTP sent is of 6 digit only
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Verify the  OTP field
    Then  OTP sent should be  of 6 digit only
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify resend cta is disabled for 60 secs
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Verify the  OTP field
    Then  Resend cta should be disabled for 60 secs
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify resend cta is enable after 60 sec
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Verify the  OTP field
    Then  Resend cta should be  enable after 60 sec
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify resend OTP popup is displayed for resend OTP
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Verify the  OTP field
    Then Resend OTP popup should be displayed for resend OTP
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify OTP is triggered to mobile when user click on SMS
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Click on SMS
    Then OTP should be triggered to mobile when user click on SMS
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify OTP is triggered to email when user click on Email
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Click on Email
    Then  OTP should be  triggered to email when user click on Email
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify user is redirected to landing page after entering correct OTP
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline:To verify that user is able to view smart lease tab under header section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the smart lease tab
    Then  User should be  able to view smart lease tab under header section

    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to select fields under Customer by search dropdown field
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the Customer by search dropdown
    Then  User should be able to select fields under Customer by search dropdown field
  1.customer ID
  2.lease number
  3.Aggrement number
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to enter values under Customer by search dropdown field
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on customer360  URL
    And  Click on Customer ID Number
    Then  User should be  able to enter values under Customer by search dropdown field
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is redirected to smart lease page when click on proceed CTA
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"

    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is on smart lease dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |


  Scenario Outline:To verify that user is able to view personal info under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Top Section is displayed same as in Landing Page
    And Verify 3 Sections of Dashboard Page
    Then User should be able to view personal info labels "<Labels>" under dashboard page

    #    And .Verify the personal info values
  #  Below fields should be display under personal info
#  1.DOB
#  2.PAN
#  3.Mobile No:
#  4.Email ID:
#  5.Address
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  | Labels                                      |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard | DOI:, PAN:, Mobile No:, Email ID:, Address: |

  Scenario Outline:To verify that user is able to view Service segment under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Service Segment Section Labels "<Labels>" in DashBoard Page

    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  | Labels                                                                                      |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard | DNC Status, Service Segment, Preferred Language, KYC Renewal Date, KYC Type, Mandate Status |

  Scenario Outline:To verify that user is able to view quicklinks  under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Quick Links Section in DashBoard Page with Links "<Links>"

#    And Verify the quicklinks section
#    Then User should be able to view quicklinks under dashboard page
#  Below fields should be display under more widge
#  1.BUREAU INSIGHTS
#  2.RAISE SR
#  3.PII
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  | Links                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard | BUREAU INSIGHTS#RAISE SR#PII |

  Scenario Outline:To verify that user is able to view Customer Portfolio under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify the  Customer Portfolio
    Then User should be able to view Customer Portfolio under dashboard page
  Below fields should be display under Customer Portfolio
  1.PPC
  2.Total POS
  3.DELINQUENCY
  4.Bucket
  5.Bounce count
  6.credit score
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Relational Overview tab
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify the Relational Overview tab
    Then User should be able to view Relational Overview tab
  Below fields should be display
  1.Loan
  2.Insurance
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view loan under  Relational Overview section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify the  loan
    Then User should be able to view  loan under  Relational Overview section
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to Table view of loan fields  under  Relational Overview section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify the  loan
    Then User should be able to view below loan fields under  Relational Overview section
  1.Agreement Level  Search
  2.Product name
  3.Customer Id
  4.Deal Id
  5.PLF
  6.Active
  7.Lease Amount
  8.POS
  9.Monthly rental
  10.Disbursement Date
  11. Next Monthly rental Due date
  12.Total Overdue₹0.00
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Download link for the document under loan
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Download link for the document under loan
    Then User should be  able to view Below Download link for the document under loan
  1.Amort Schedular
  2.FC Letter
  3.NOC
  4.NDC
  5.Scanned Docs
  6.Welcome Letter
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that  Coming Soon message is  displayed when user  Click on Amort Schedular
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Amort Schedular
    And Verify the message
    Then  Coming Soon message should be displayed when user  Click on Amort Schedular
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that only pdf download on click NOC and NDC
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click NOC and NDC
    And Verify the PDF
    Then  Only pdf should be download on click NOC and NDC
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that  Coming Soon message is  displayed when user  Click on FC letter
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on FC letter
    And Verify the PDF
    Then   Coming Soon message should be displayed when user Click on FC letter
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Sourcing Information under loan
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the  Sourcing Information
    Then   User should be  able to view  Lease details CTA under loan tab
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Sourcing Information under loan
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the  Sourcing Information
    Then  User should be able to view Below Sourcing Information under loan
  1.Application ID
  2.Approval Date
  3.Branch
  4.Deal ID
  5.Dealer Name
  6.DMA Name
  7.DSA Name
  8.Scheme Code
  9.Scheme
  10.Credit Program

    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Loan details under lease details
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the Loan details
    Then  User should be able to view below  Loan details
  1.Advance Rental
  2.Balance Tenure
  3.Rental Received till date
  4.First Due Date
  5.Gross Tenure
  6.Linked Agreement No
  7.Net Tenure
  8.Repayment Frequency
  9.Lease Commencement Date.
  10.Monthly Lease rental
  11.Lease End Date (Last due date)
  12.RV percentage
  13.GST on Monthly rental
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Loan Details Due under lease details
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the Loan Details Due under lease details
    Then  User should be able to view Loan Details Due under lease details
  1. Lease Details Due
  2. Rental Overdue
  3.LPP Overdue
  4.Bounce Charges
  5.Other Charges
  6.Total Overdues
  7.POS
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Banking details Under lease details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the Banking details under lease details
    Then  User should be  able to view below Banking details
  Under lease details page
  1.Bank Account No
  2.IFSC
  3.ECS Max Limit
  4.Bank Name
  5.Balance Limit
  6.Expiry Date
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Insurance details Under lease details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the Insurance details Under lease details page
    Then   User should be  able to view Insurance details Under lease details page
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to click on Insurance details Under lease details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the Insurance details Under lease details page
    Then   User should be able to click on Insurance details Under lease details page
  Below fields should be display
  1.Name
  2.DOB
  3.Policy No
  4.IDV
  5.Make
  6.Model
  7.Nominee Name
  8.Nominee Relation
  9.Issue date
  10.Expiry date
  11.Insurance company name
  12.Insurance Premium
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Assets and Property
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And .Verify the  Assets and Property
    Then   User should be  able to view below details of
  Assets and Property
  1.Vehicle Details
  2.Chasis No
  3.Engine No
  4.Model
  5.RC No
  6.Registration Date
  7.Vehicle Make/Color
  8.Vehicle Manufactured
  9.Base Price
  10.Road Tax
  11.GST % and amount
  12.CESS % and amount
  13.EX-showroom Price
  14.TCS % and amount
  15.Insurance amount
  16.Accessories with GST%
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view EMI Status under lease details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And .Verify the  EMI Status under lease details page
    Then   User should be  able to view below details of EMI Status under lease details page
  1. Rental Status
  2.Rental Due Date
  3.Type
  4.Presentation Date
  5.Repay Mode
  6.Sub Repay Mode
  7.Bank Name
  8.Account No.
  9.MICR
  10.Account Holder Name
  11.Amount
  12.Status
  13.Reason
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:TTo verify that user is able to view Disbursment Banking Details under lease details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And .Verify the  Disbursment Banking
    Then  User should be  able to view below Disbursment Banking Details under lease details page
  1.Transaction Date
  2.Disbursement Type
  3.Account No
  4.IFSC
  5.Account Holder Name
  6.Payment Mode
  7.Amount
  8.Value Date
  9.UTR
  10.Status
  11.Reject Reason
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view  Invoice details)under lease details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the Invoice details under lease details page
    Then  User should be able to view Invoice details under lease details page
  1.Invoice details
  2.Base Price
  3.Road Tax
  4.GST %
  5.CESS %
  6.EX-showroom Price
  7.TCS %
  8.Residual %
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Co-Lessee Details under lease details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the  Co-Lessee Details under lease details page
    Then  User should be able to view below  Co-Lessee Details under lease details page
  1.Co-Lessee Details
  2.Username
  3.Employee ID
  4.User’s Email ID
  5.User’s Mobile Number
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Track NOC under lease details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the Track NOC under lease details page
    Then User should be  able to view Track NOC under lease details page
  1.Detail Courier Company Name
  2.POD No
  3.Dispatched Date
  4.Delivery Date(Expected)
  5.Delivery Date(Actual)
  6.Collected By
  7.Remarks
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view DEBT MGMT under lease details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the DEBT MGMT under lease details page
    Then User should be able to view DEBT MGMT under lease details page
  1.Follow Up Trails
  2.Allocation History
  3.Legal Details
  4.Legal Details Not Available.
  5.Settlement Details
  6.Tranch Details
  7.Queue Detai
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Charges under lease details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Agreement number
    And Verify the Charges under lease details page
    Then User should be able to view Charges under lease details page
  1.MONTHLY PROCESSING FEES
  2.GST on Monthly Processing Fees
  3.STAMP DUTY
  4.Type and Fields
  5.Fee and Fee Type
  6.Fee and Fee Schedule Method
  7.Fee and Actual amount
  8.Fee and Paid Amount
  9.VAS Product Name
  10.VAS Reference
  11.VAS Fee
  12.VAS Fee Payment Mode
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view more widget under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on widgets
    And Verify the  more widgets
    Then Below more widgets should be display
  1.GST
  2.SICR
  3.Demographic Details
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view Communication Trails under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Communication Trails
    And Verify the  Communication Trails
    Then User should be  able to view Communication Trails under dashboard page
  Below fields should be display
  1.SENT DATE
  2.TEXT
  3.CHANNEL
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  Scenario Outline:To verify that user is able to view service request under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Others" from Menu Tab of Landing Page
    And Selects "Smart Lease" from Menu Tab of Landing Page
    Then User should be redirected to Landing Page "<Url2>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "247585548" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on  service request
    And Verify the   service request
    Then User should be able to view below service request fields under dashboard page
  1.DATE
  2.REQUEST ID
  3.CATEGORY
  4.DISPOSITION
  5.STATUS
    Examples:
      | Domain | Username  | Password       | Url                                            | Url2                                                     | Dashboard                                                  |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/smartleaselanding | https://customer360uat.bajajfinserv.in/smartleasedashboard |

  
  
  
  
  
  