Feature: FF_6249997_Underwriting View - Customer 360

#  202371761-------Connect@2025---------cashier
#  3085795----Bajajsoun#2000-----------Underwriting
#  08ESPFGT540997 ,9970790790, facility status data of underwriting US
#  8025139,480126326,171765428, 557527655,189734 ,9970790790-----SOA test data

  @pass
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
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
  Scenario Outline: To verify that user is able to select fields under Customer by search dropdown field
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"
    And Verify User is able to view below content for Landing Page
    And Verify User is able to view below content for Top Section on Landing Page
    And Verify User is able to view below content for Search Section on Landing Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
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
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

#    Then User should be able to enter number under Customer by search dropdown field

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
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
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
  Scenario Outline: To verify that user is dashboard page
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
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
  Scenario Outline: To verify that user is login with Underwriting  profile
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Underwriting"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
  Scenario Outline: To verify that user is login with Underwriting  profile
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
    And Verify the User Profile is "Underwriting"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @data
  Scenario Outline: To verify that user is able to view Facility Status based on  rank priority
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on Customer by search dropdown
    And  Click on Customer ID Number
    And Enter the Customer ID  Number
    And Click on proceed CTA
    And Verify the Facility Status based on  rank priority
    Then User should be  able to view Facility Status based on below  rank priority
#  a. Rank 1 - Settled
#  b. Rank 2 - Write off
#  c. Rank 3 - Repossession Status
#  d. Rank 4 - Restructure
#  e. Rank 5 – Sale

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @data
  Scenario Outline: To verify that user is able to view the credit facility status as settled, written off, or repossessed ,Y or N is display under facility status
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on Customer by search dropdown
    And  Click on Customer ID Number
    And Enter the Customer ID  Number
    And Click on proceed CTA
    And Verify the page
    Then User should be able to view the credit facility status as settled, written off, or repossessed ,Y or N is display under facility status
    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
  Scenario Outline: To verify that user is able to view restructure or sale under facility status section
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
    And User should be able to view "Facility Status" under "live-tradeline" in Underwriting Dashboard Page
    And User should be able to view "Restructure Status" under "live-tradeline" in Underwriting Dashboard Page

#    Then User should be  able to view restructure or sale under facility status section

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
  Scenario Outline: To verify that user is able to view credit Facility Status “NA”  when  Facility Status ,Restructured status is “N”
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
    When User has "Facility Status" in the Live Tradeline Table as "NA"
    When User has "Restructure Status" in the Live Tradeline Table as "NA"
    Then User should be able to view credit Facility Status as "NA"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
  Scenario Outline:To verify that user is able to view card detail between Tradeline Overview and Identification
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "150045665" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
#    Then Dashboard page should be refreshed according to selected customer ID "150051831"
    And Clicks on "Other Relations" tab under Underwriting Dashboard Page
    And Clicks on "Identification" tab under Underwriting Dashboard Page
    And Clicks on "Other Relations" tab under Underwriting Dashboard Page
    And Clicks on "Cards" Subtab under Underwriting Dashboard Page
    Then Below options "<Options>" should be displayed under Cards tab in tabular format

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | Options                                                                     |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Card Number#Card Type#Card Limit#Available Limit#Utilized Limit#Card Status |

  @pass
  Scenario Outline:To verify that user is redirected to get details popup  when user click on Card number
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "150045665" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
#    Then Dashboard page should be refreshed according to selected customer ID "150051831"
    And Clicks on "Other Relations" tab under Underwriting Dashboard Page
    And Clicks on "Identification" tab under Underwriting Dashboard Page
    And Clicks on "Other Relations" tab under Underwriting Dashboard Page
    And Clicks on "Cards" Subtab under Underwriting Dashboard Page
    And Clicks on Card number "2030402922057904" in cards
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
  Scenario Outline:To verify that user is able to view card type
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "150045665" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
#    Then Dashboard page should be refreshed according to selected customer ID "150051831"
    And Clicks on "Other Relations" tab under Underwriting Dashboard Page
    And Clicks on "Identification" tab under Underwriting Dashboard Page
    And Clicks on "Other Relations" tab under Underwriting Dashboard Page
    And Clicks on "Cards" Subtab under Underwriting Dashboard Page
    Then User should be able to view "Card Type" under Cards Table
#    Then User should be able to view below card type
#  1.EMI Card
#  2. Health Card

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
  Scenario Outline:To verify that Agreement Number,Deal ID is freeze under Live tradeline and Closed Tradeline
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
    And User horizontally scrolls the Live Tradeline table
    Then User should be able to view "Aggrement number" under "live-tradeline" table is freezed
    Then User should be able to view "Deal ID" under "live-tradeline" table is freezed

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |


#######
  @pass
  Scenario Outline: To verify that options displayed under Other Relations tab
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
    And Clicks on "Other Relations" tab under Underwriting Dashboard Page
    And Below SubTabs "<SubTabs>" should be displayed under "Other Relations" Tab in Underwriting Dashboard Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | SubTabs |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Cards   |

  @pass
  Scenario Outline: To verify that Table is displayed for Identification Tab
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
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | SubTabs |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Cards   |

  @pass
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
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | SubTabs |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Cards   |

  @pass
  Scenario Outline: To verify the redirection after clicking on Offers Tab
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
    And Clicks on "Offers" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/offers" Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | SubTabs |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Cards   |

  @pass
  Scenario Outline: To verify the redirection after clicking on Bureau Insight Tab
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
    And Clicks on "Bureau Insight" tab under Underwriting Dashboard Page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/bureauinsight" Page

    Examples:
      | Domain | Username | Password       | Url                                            | Dashboard                                                    | SubTabs |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard | Cards   |

  @pass
  Scenario Outline: To verify the redirection after clicking on Communication Trail Tab
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
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |

  @pass
  Scenario Outline: To verify the redirection after clicking on Service Requests Tab
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
      | Domain | Username | Password       | Url                                            | Dashboard                                                    |
      | CC     | 3085795  | Bajajsoun#2000 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/underwritingdashboard |


    
    
    