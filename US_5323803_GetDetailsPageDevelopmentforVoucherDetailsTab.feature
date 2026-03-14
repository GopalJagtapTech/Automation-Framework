Feature: US_5323803_Get Details Page Development for Voucher Details Tab

  @pass @run
  Scenario Outline: To verify that user is able to view voucher details under more widgets
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to click on voucher details tab under more widgets
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Below Menus "<Menus>" Should be displayed to the user on LHS of "Voucher" Details page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Menus                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Flexi Rewards, Rewards Service |

  @pass @run
  Scenario Outline: To verify that user is able to view rewards service on LHS
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Below Menus "Rewards Service" Should be displayed to the user on LHS of "Voucher" Details page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is able to click on rewards service on LHS
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Rewards Service" in "Voucher" Details Page
    Then User should be able to view below details under Reward Service "Reward Service"


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is able to view customer id fields under customer id column - Reward Service
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Rewards Service" in "Voucher" Details Page
    And User should be able to view "CUSTOMER ID" under "Reward Service"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is able to view Flag fields  under Flag column -Reward Service
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Rewards Service" in "Voucher" Details Page
    And User should be able to view "FLAG" under "Reward Service"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is able to view rewards fields  under rewards column -Reward Service
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Rewards Service" in "Voucher" Details Page
    And User should be able to view "REWARD" under "Reward Service"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data @run
  Scenario Outline: To verify that user is able to view eligibility fields under eligibility column -Reward Service
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Rewards Service" in "Voucher" Details Page
    And User should be able to view "ELIGIBILITY DATE" under "Reward Service"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data @run
  Scenario Outline: To verify that user is able to view transaction ID fields  under transaction ID column -Reward Service
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Rewards Service" in "Voucher" Details Page
    And User should be able to view "TRANSACTION ID" under "Reward Service"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that “No data Available“ message is display when no data Available -Reward Service
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Rewards Service" in "Voucher" Details Page
    Then "No records found" message should be displayed for "Reward Service" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that user is able to view Flexi Rewards on LHS
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Below Menus "Flexi Rewards" Should be displayed to the user on LHS of "Voucher" Details page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that user is able to click on flexi rewards on LHS
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Flexi Rewards" in "Voucher" Details Page
    Then User should be able to view below details under Flexi Rewards "Flexi Rewards"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that user is able to view customer id fields under customer id column - Flexi Rewards
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Flexi Rewards" in "Voucher" Details Page
    And User should be able to view "CUSTOMER ID" under "Flexi Rewards"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that user is able to view agreement no fields under agreement no column - Flexi Rewards
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Flexi Rewards" in "Voucher" Details Page
    And User should be able to view "AGREEMENT NO" under "Flexi Rewards"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that user is able to view product fields under product column - Flexi Rewards
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Flexi Rewards" in "Voucher" Details Page
    And User should be able to view "PRODUCT" under "Flexi Rewards"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that user is able to view available limit fields under available limit column - Flexi Rewards
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Flexi Rewards" in "Voucher" Details Page
    And User should be able to view "AVAILABLE LIMIT" under "Flexi Rewards"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that user is able to view mini drawdown amount  fields under customer id column - Flexi Rewards
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Flexi Rewards" in "Voucher" Details Page
    And User should be able to view "MIN-DRAWDOWN AMOUNT" under "Flexi Rewards"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that user is able to view campaign start date  fields under campaign start date column - Flexi Rewards
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Flexi Rewards" in "Voucher" Details Page
    And User should be able to view "CAMPAIGN START DATE" under "Flexi Rewards"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that user is able to view campaign end date fields under campaign end date column - Flexi Rewards
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Flexi Rewards" in "Voucher" Details Page
    And User should be able to view "CAMPAIGN END DATE" under "Flexi Rewards"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that user is able to view campaign  id fields under campaign  id column - Flexi Rewards
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Flexi Rewards" in "Voucher" Details Page
    And User should be able to view "CAMPAIGN ID" under "Flexi Rewards"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline:To verify that “No data Available “ message is display when no data Available - Flexi Rewards
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "Voucher Details" under Widgets Section
    And Clicks on "Voucher Details" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/voucherdetails" Page
    And Clicks on LHS Option "Flexi Rewards" in "Voucher" Details Page
    Then "No records found" message should be displayed for "Flexi Rewards" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |







