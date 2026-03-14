Feature:  TC_5323680_Get Details Page Redirection for Dedupe Linkage Tab

  @pass @run
  Scenario Outline: To verify that user is able to view Dedupe  Linkage tab in More Widget section
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
    And Verify User is able to view the Options "Dedupe Linkage" under Widgets Section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that on click of Dedupe Linkage tab user is redirected to provided URL
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
    And Clicks on "Dedupe Linkage" Option under Widgets section
    Then User should be redirected to "https://report.bajajfinserv.in/DedupeDetails" Page in New Tab

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify the customer id & GUI  id pass to dedupe linkage URL
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
    And click on More widget
    And click on Dedupe linkage
    Then Customer id and GUI id should be passed to dedupe linkage URL
    Examples:
      | Domain     | Username  | Password |
      | Partner/CC | ********* | ******** |


  @data @run
  Scenario Outline: To verify that Dedupe Linkage details displayed in tabular format
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
    And Clicks on "Dedupe Linkage" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/dedupelinkage" Page in New Tab
    And User should be able to view below details under Dedupe Details "Dedupe Details"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @data @run
  Scenario Outline: To verify that user is able to view "AGREEMENT NO" in dedupe details table

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
    And Clicks on "Dedupe Linkage" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/dedupelinkage" Page in New Tab
    And User should be able to view "AGREEMENT NO." under "Dedupe Details"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data @run
  Scenario Outline: To verify that user is able to view "OLD CUSTOMER ID" in dedupe details table

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
    And Clicks on "Dedupe Linkage" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/dedupelinkage" Page in New Tab
    And User should be able to view "OLD CUSTOMER ID" under "Dedupe Details"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data @run
  Scenario Outline: To verify that user is able to view "NEW CUSTOMER ID" in dedupe details table

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
    And Clicks on "Dedupe Linkage" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/dedupelinkage" Page in New Tab
    And User should be able to view "NEW CUSTOMER ID" under "Dedupe Details"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data @run
  Scenario Outline: To verify that user is able to view "ACTIVITY DATE" in dedupe details table

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
    And Clicks on "Dedupe Linkage" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/dedupelinkage" Page in New Tab
    And User should be able to view "ACTIVITY DATE" under "Dedupe Details"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |
