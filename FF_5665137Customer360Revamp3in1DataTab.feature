Feature: FF:5665137: Customer360 Revamp - 3in1 Data Tab in Quick Links Widget

  @pass @run
  Scenario Outline: To verify that user is able to view 3 in 1 Data tab under quick link widget section

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
    And Verify Quick Links Section in DashBoard Page with Links "3-in-1 Data"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that 3in1 Data tab is displayed only for Service PII, Service Non PII, Service Non PII NON BFL profiles

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
    When Verify quick link widget section
    Then 3in1 Data tab should be displayed only for Service PII, Service Non PII, Service Non PII NON BFL profiles

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that on click on 3 in 1 Data tab user is redirected to details page

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
    And Clicks on "3-in-1 Data" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/threeinone" Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify the menus displayed on 3 in 1 Data details page

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
    And Clicks on "3-in-1 Data" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/threeinone" Page
    And Below Menus "3-in-1 Data" Should be displayed to the user on LHS of "3-in-1 Data" Details page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that if customer is having multiples customer ID’s then relations are displayed according to selected customer id

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "8800404987" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on "3-in-1 Data" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/threeinone" Page
    Then Below Tabs "<Tabs>" should be displayed under 3 in 1 data
    Then Respective relations should be displayed for selected customer id
    Then Below Tabs "<Tabs>" should be displayed under 3 in 1 data

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Tabs                           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Loans,Cards,Deposits,Insurance |

  @pass @run
  Scenario Outline:To verify that dropdown arrow is displayed when customer is having multiple ID’s

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "8800404987" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on "3-in-1 Data" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/threeinone" Page
    Then Dropdown arrow should be displayed when customer is having multiple IDs

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify the Tabs displayed under 3in1 data

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
    And Clicks on "3-in-1 Data" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/threeinone" Page
    Then Below Tabs "<Tabs>" should be displayed under 3 in 1 data

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Tabs                           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Loans,Cards,Deposits,Insurance |

  @pass @run
  Scenario Outline:To verify the Count for Tabs is displayed under 3in1 data

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
    And Clicks on "3-in-1 Data" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/threeinone" Page
    Then Count for the Tab "Loans" should be displayed under 3 in 1 data
    Then Count for the Tab "Cards" should be displayed under 3 in 1 data
    Then Count for the Tab "Deposits" should be displayed under 3 in 1 data
    Then Count for the Tab "Insurance" should be displayed under 3 in 1 data

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Tabs                           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Loans,Cards,Deposits,Insurance |

  @pass @run
  Scenario Outline:To verify that details displayed when customer is having loan

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
    And Clicks on "3-in-1 Data" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/threeinone" Page
    And Clicks on Tab "Loans" under 3in1 data Section
    Then Count for the Tab "Loans" should be displayed under 3 in 1 data
    And Below details should be displayed for Loans under 3 in 1 data


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that details displayed when customer is having Insurance

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
    And Clicks on "3-in-1 Data" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/threeinone" Page
    And Clicks on Tab "Insurance" under 3in1 data Section
    Then Count for the Tab "Insurance" should be displayed under 3 in 1 data
    And Below details should be displayed for Insurance under 3 in 1 data

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that details displayed when customer is having Card

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
    And Clicks on "3-in-1 Data" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/threeinone" Page
    And Clicks on Tab "Cards" under 3in1 data Section
    Then Count for the Tab "Cards" should be displayed under 3 in 1 data
    And Below details should be displayed for Cards under 3 in 1 data

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that details displayed when customer is having Fixed deposit

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9867024806" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on "3-in-1 Data" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/threeinone" Page
    And Clicks on Tab "Deposits" under 3in1 data Section
    Then Count for the Tab "Deposits" should be displayed under 3 in 1 data
    And Below details should be displayed for Deposits under 3 in 1 data

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that Card Number is in masked format in Cards

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
    And Clicks on "3-in-1 Data" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/threeinone" Page
    And Clicks on Tab "Cards" under 3in1 data Section
    Then Count for the Tab "Cards" should be displayed under 3 in 1 data
    And Card Number should be in masked format for Cards

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |



