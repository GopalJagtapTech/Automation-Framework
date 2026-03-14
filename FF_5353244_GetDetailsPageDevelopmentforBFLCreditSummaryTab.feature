Feature: FF_5353244_Get Details Page Development for BFL Credit Summary Tab (More Widgets)

  @pass @run
  Scenario Outline: To verify that Credit Summary option is available under Quick Links widget only for Underwriting Role
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify the Sections displayed when user is on Dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    Then Below Options "<Options>" should be displayed under the BFL Credit Summary section "BFL Credit Summary"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                                                                                   |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Loan Summary, Credit Portfolio, Credit Portfolio, Applicant Details, Identification, Address Details, Email ID & Mobile no., Live Tradeline, Cancelled & Closed Tradeline |

  @pass @run
  Scenario Outline: To verify Customer ID dropdown should be displayed in BFL Credit Summary Page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Customer ID dropdown should be displayed in BFL Credit Summary Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                                                                                   |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Loan Summary, Credit Portfolio, Credit Portfolio, Applicant Details, Identification, Address Details, Email ID & Mobile no., Live Tradeline, Cancelled & Closed Tradeline |

  @pass @run
  Scenario Outline: To verify the details displayed under Loan Summary section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Below Details "<Details>" should be displayed under "Loan Summary" Section in Credit Summary Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Total Loans, Total Live Loan, Total Closed Loan |

  @data
  Scenario Outline: To verify “No Records Available” message is displayed incase data is not available in API -Loan Summary
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And "No records found" message should be displayed for "Loan Summary" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify the details displayed under Credit Portfolio section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Below Details "<Details>" should be displayed under "Credit Portfolio" Section in Credit Summary Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                                                                                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Total POS, Delinquency, Bucket, Highest Ever Bucket, Bounce Count, Internal Score, Credit Facility Status, Cluster Segment |

  @data
  Scenario Outline: To verify “No Records Available” message is displayed incase data is not available in API - Credit Portfolio
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And "No records found" message should be displayed for "Credit Portfolio" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify the details displayed under Applicant Details section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Below Details "<Details>" should be displayed under "Applicant Details" Section in Credit Summary Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                                                                                                                         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Applicant Name, DOB, Gender, Individual Corporate Flag, Age, Date of Incorporation, Customer Type, Nature of Business, Father Name, Spouse Name |

  @data
  Scenario Outline: To verify “No Records Available” message is displayed incase data is not available in API - Applicant Details
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And "No records found" message should be displayed for "Applicant Details" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify the details displayed under Identification section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Verify the details displayed under Identification section "Identification"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @data
  Scenario Outline: To verify “No Records Available” message is displayed incase data is not available in API - Identification section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7720070606" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And "No records found" message should be displayed for "Identification" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify the details displayed under Address Details section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Below Details "<Details>" should be displayed under "Address Details" Section in Credit Summary Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                                         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Address ID, Address, City Name, Pincode, Address Type, Landmark |

  @data
  Scenario Outline: To verify “No Records Available” message is displayed incase data is not available in API - Address Details
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And "No records found" message should be displayed for "Identification" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify the details displayed under Email ID & Mobile No section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Below Details "<Details>" should be displayed under "Email ID & Mobile no." Section in Credit Summary Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Email, Mobile No., Phone 1 |

  @data
  Scenario Outline: To verify “No Records Available” message is displayed incase data is not available in API - Email ID & Mobile no.
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And "No records found" message should be displayed for "Email ID & Mobile no." when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify the details displayed under Live Tradeline section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And User should be able to view below details under Live Tradeline Table "Live Tradeline"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify “No Records Available” message is displayed incase data is not available in API - Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9028224300" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    Then "No records found" message should be displayed for "Live Tradeline" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify the details displayed under Cancelled & Closed Tradeline section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9028224300" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And User should be able to view below details under Cancelled & Closed Tradeline Table "Cancelled & Closed Tradeline"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify “No Records Available” message is displayed incase data is not available in API - Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    Then "No records found" message should be displayed for "Cancelled & Closed Tradeline" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


        ##########View Details - Live Tradeline
  @pass @run
  Scenario Outline: To verify user redirect on View Details page when click on View Details link - Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Live Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And User should redirect to View Details page and below sections should be displayed

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify the details displayed under Applicant Details section of View Details Page -Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Live Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And Below Details "<Details>" should be displayed under "Co Applicant" Section in View Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                                                                                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Applicant Name, DOB, PAN, Applicant Type, Gender, Segment, Address Type, Is Mailing Address, Address, Mobile No., Email ID |

  @data
  Scenario Outline: To verify “No Records Available” message is displayed incase data is not available in API -Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Live Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    Then "No records found" message should be displayed for "Co Applicant" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify the details displayed under Tradeline Details section of View Details Page -  Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Live Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And Below Details "<Details>" should be displayed under "Tradeline Details" Section in View Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Agreement Number, Product Type, Loan Disbursal Date, Repayment Bank A/c Name, Deal ID, Member, Bucket, Overdue Amount, Interest Overdue, DPD, Updated Start Date, First EMI Date, Gross Tenure, Credit Facility Status, Credit Facility Initiation Date, Restructure Amount, SOA, Source System, Product Category, Dropline Loan Amount, MOB Served, Total Loan Amount, Repayment Bank A/c No., POS, Penalty Due, Principle Overdue, DPD Flag, Updated End Date, Last EMI Date, Balance Tenure, Credit Facility Remark, Written-off/Settlement/Repossessed Amount, Restructure Date, Repayment Schedule, Product ID, Loan Variant, Utilized Loan Amount, Loan Closure Date, Instalment Amount, Flexi Flag, Loan Status, BCC Due, Other Due, Bounce Count, Technical Bounce Flag, Net Tenure, Parent/Child Flag, Credit Facility Date, Restructure Status, Sale Data, Is foreclosed |

  @pass @run
  Scenario Outline:To verify the Document is downloaded on clicking the Pdf Logo - SOA - Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Live Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And On clicking the PDF Logo of the Label SOA "SOA", then the Document should be downloaded along with a Toast message

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify the Document is downloaded on clicking the Pdf Logo - Repayment Schedule - Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Live Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And On clicking the PDF Logo of the Label Repayment Schedule "Repayment Schedule", then the Document should be downloaded along with a Toast message

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify updated details are displayed as per selected LAN in case of multiple LAN’s available - Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Live Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And Select Another lan available, then details should be updated as per LAN selected

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

    ##########View Details - Cancelled & Closed Tradeline
  @pass @run
  Scenario Outline: To verify user redirect on View Details page when click on View Details link -Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9028224300" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Cancelled & Closed Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And User should redirect to View Details page and below sections should be displayed

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify the details displayed under Applicant Details section of View Details Page -Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9028224300" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Cancelled & Closed Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And Below Details "<Details>" should be displayed under "Co Applicant" Section in View Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                                                                                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Applicant Name, DOB, PAN, Applicant Type, Gender, Segment, Address Type, Is Mailing Address, Address, Mobile No., Email ID |

  @data
  Scenario Outline: To verify “No Records Available” message is displayed incase data is not available in API -Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Cancelled & Closed Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    Then "No records found" message should be displayed for "Co Applicant" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify the details displayed under Tradeline Details section of View Details Page - Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9028224300" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Cancelled & Closed Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And Below Details "<Details>" should be displayed under "Tradeline Details" Section in View Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Details                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Agreement Number, Product Type, Loan Disbursal Date, Repayment Bank A/c Name, Deal ID, Member, Bucket, Overdue Amount, Interest Overdue, DPD, Updated Start Date, First EMI Date, Gross Tenure, Credit Facility Status, Credit Facility Initiation Date, Restructure Amount, SOA, Source System, Product Category, Dropline Loan Amount, MOB Served, Total Loan Amount, Repayment Bank A/c No., POS, Penalty Due, Principle Overdue, DPD Flag, Updated End Date, Last EMI Date, Balance Tenure, Credit Facility Remark, Written-off/Settlement/Repossessed Amount, Restructure Date, Repayment Schedule, Product ID, Loan Variant, Utilized Loan Amount, Loan Closure Date, Instalment Amount, Flexi Flag, Loan Status, BCC Due, Other Due, Bounce Count, Technical Bounce Flag, Net Tenure, Parent/Child Flag, Credit Facility Date, Restructure Status, Sale Data, Is foreclosed |


  @pass @run
  Scenario Outline:To verify the Document is downloaded on clicking the Pdf Logo - SOA - Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9028224300" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Cancelled & Closed Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And On clicking the PDF Logo of the Label SOA "SOA", then the Document should be downloaded along with a Toast message

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify the Document is downloaded on clicking the Pdf Logo - Repayment Schedule - Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9028224300" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Cancelled & Closed Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And On clicking the PDF Logo of the Label Repayment Schedule "Repayment Schedule", then the Document should be downloaded along with a Toast message

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @data  #NA
  Scenario Outline:To verify the pagination is available incase of multiple entries exist
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Verify the Cancelled & Closed Tradeline section
    And Click on View Details link
    And verify the Tradeline Details section
    Then pagination should be available incase of multiple entries exist
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data #NA
  Scenario Outline:To verify “No Records Available” message is displayed incase data is not available in API -Tradeline Details section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Cancelled & Closed Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    Then "No records found" message should be displayed for "Tradeline Details" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify updated details are displayed as per selected LAN in case of multiple LAN’s available - Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9922912788" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Cancelled & Closed Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And Select Another lan available, then details should be updated as per LAN selected

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data  ###NA
  Scenario Outline: To verify the pagination is available incase of multiple entries exist
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Verify the Cancelled & Closed Tradeline section
    And Click on View Details link
    And verify the Tradeline Details section
    And click on view details
    And Click on Applicant selection dropdown
    And Select Another Applicant name available
    Then Then pagination should be available incase of multiple entries exist
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data #NA
  Scenario Outline: To verify updated details are displayed as per selected Applicant in case of multiple Applicants available
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Verify the Cancelled & Closed Tradeline section
    And Click on View Details link
    And Click on View Details link
    And Click on Applicant selection dropdown
    And Select Another Applicant name available

    Then details should be updated as per Applicant selected
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data  #NA
  Scenario Outline: To verify the pagination is available incase of multiple entries exist

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Verify the Cancelled & Closed Tradeline section
    And Click on View Details link
    And Click on View Details link
    And Click on Applicant selection dropdown
    And Select Another Applicant name available

    Then pagination should be available incase of multiple entries exist
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify “No Records Available” message is displayed incase data is not available in API - New Applicant
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Verify the Cancelled & Closed Tradeline section
    And Click on View Details link
    And Click on View Details link
    And Click on Applicant selection dropdown
    And Select Another Applicant name available
    Then “No Records Available” message should be displayed
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify SOA Document is downloadable on click of Pdf Icon - Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And User should be able to download document on clicking Pdf logo of "SOA" Document in "Live Tradeline" Section of Credit Summary Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify SOA Document is downloadable on click of Pdf Icon - Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9922912788" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And User should be able to download document on clicking Pdf logo of "SOA" Document in "Cancelled & Closed Tradeline" Section of Credit Summary Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


    #######Formats

  @pass @run
  Scenario Outline: To verify that “₹” icon is displayed before the financial amount - Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    Then "₹" icon should be displayed before the financial amount for "Loan Amount" in "Live Tradeline" Table
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that “₹” icon is displayed before the financial amount - Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9922912788" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    Then "₹" icon should be displayed before the financial amount for "Loan Amount" in "Cancelled & Closed Tradeline" Table
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that Date Format is displayed same in the Tables - Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Verify the Date for "Disbursal Date" Label in "Live Tradeline" Table in Credit Summary Pages

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that Date Format is displayed same in the Tables - Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9922912788" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Verify the Date for "Disbursal Date" Label in "Cancelled & Closed Tradeline" Table in Credit Summary Pages

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @data
  Scenario Outline: To verify that Date Format is same for all the Fields -View Details Page -  Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Live Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And Verify the Date for "Loan Disbursal Date, Last EMI Date" Label in "Tradeline Details" Section in Credit Summary Pages

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that Date Format is same for all the Fields -View Details Page -  Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9922912788" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Cancelled & Closed Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    And Verify the Date for "Loan Disbursal Date, Last EMI Date" Label in "Tradeline Details" Section in Credit Summary Pages

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that “₹” icon is displayed before the financial amount -View Details Page -  Live Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Live Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    Then "₹" icon should be displayed before the financial amount for "<Labels>" in "Tradeline Details" Section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Labels                                                                           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Total Loan Amount, Dropline Loan Amount, Utilized Loan Amount, Instalment Amount |

  @pass @run
  Scenario Outline: To verify that “₹” icon is displayed before the financial amount -View Details Page -  Cancelled & Closed Tradeline
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9922912788" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Click on View Details Link of "Cancelled & Closed Tradeline" Section in Credit Summary Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/viewloandetails" Page
    Then "₹" icon should be displayed before the financial amount for "<Labels>" in "Tradeline Details" Section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Labels                                                                           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Total Loan Amount, Dropline Loan Amount, Utilized Loan Amount, Instalment Amount |

  @pass @run
  Scenario Outline: To verify masked format in Identification section - PAN
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Verify the details displayed under Identification section "Identification"
    And Verify masked format for PAN in Identification Section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify masked format in Identification section - CKYC
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Credit Summary" under Widgets Section
    And Clicks on "Credit Summary" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/creditsummary" Page
    And Verify the details displayed under Identification section "Identification"
    And Verify masked format for CKYC in Identification Section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |



