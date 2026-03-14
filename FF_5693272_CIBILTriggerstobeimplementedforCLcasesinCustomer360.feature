Feature: FF_5693272_CIBIL Triggers to be implemented for CL cases in Customer 360

  @pass @run
  Scenario Outline: To verify that user is able to view  Cibil Triggers is be static in the “Bureau” Dropdown
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

  @pass @run
  Scenario Outline: To verify that user is able to view Cibil Triggers is  available in the Bureau Dropdown
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
    And User should be able to view Cibil Triggers is be static in the Bureau Dropdown

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is redirected to L2 page when user click on Cibil triggers
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
    And Click on "Cibil Triggers" option in Bureau Dropdown
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/cibiltriggers" Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to click on backwards to check other details in the Bureau Insights when user is in L2 page
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
    And Click on "Cibil Triggers" option in Bureau Dropdown
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/cibiltriggers" Page
    And Clicks on Back CTA
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/bureauinsight" Page

#    Then User should be able to click on backwards   to check other details in the Bureau Insights when user is in L2 page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view  Cibil triggers details on the screen
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
    And Click on "Cibil Triggers" option in Bureau Dropdown
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/cibiltriggers" Page
    And User should be able to view Cibil triggers details on the screen

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Cibil triggers  section
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
    And Click on "Cibil Triggers" option in Bureau Dropdown
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/cibiltriggers" Page
    Then User should be able to view below details under Cibil Triggers "Cibil Triggers"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail @run
  Scenario Outline: To verify that user is able to view the pagination and scrolling functionality
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
    And Click on "Cibil Triggers" option in Bureau Dropdown
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/cibiltriggers" Page
#    And Verify the screen
    Then User should be able to view the pagination and scrolling functionality

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |





