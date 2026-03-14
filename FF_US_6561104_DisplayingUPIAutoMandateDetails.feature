Feature: FF_US_6561104: Displaying UPI Auto Mandate Details on Customer 360 Screen

  Scenario Outline: To verify that user is able to view landing page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"

    Examples:
      | Domain | Username  | Password         | Url                                            |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing |

  Scenario Outline: To verify that user is able to view bajajpay option under landing page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Bajaj Pay" under header section on landing page

    Examples:
      | Domain | Username  | Password         | Url                                            |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing |

  Scenario Outline: To verify that user is able to click on bajaj pay option under landing page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Bajaj Pay" under header section on landing page
    And Clicks on "Bajaj Pay" Option under Top Section

    Examples:
      | Domain | Username  | Password         | Url                                            |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing |

  Scenario Outline: To verify that user is able to click on bajaj pay option under landing page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Bajaj Pay" under header section on landing page
    And Clicks on "Bajaj Pay" Option under Top Section

    Examples:
      | Domain | Username  | Password         | Url                                            |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing |

  Scenario Outline: To verify that user is able to view bajajpay landing page when user click on bajajpay option
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be able to view Bajaj Pay Section
    Then user should land on Bajaj Pay menu landing page with below details available:

    Examples:
      | Domain | Username  | Password         | Url                                            |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing |

  Scenario Outline: To verify that user is able to select fields  under Customer by search dropdown field
    Given User is on Customer 360 Login Page
    And User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Verify User is able to view Below Options "<Options>" for Search Customer By Dropdown

    Examples:
      | Domain | Username  | Password         | Url                                            | Options                   |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | Mobile Number#Customer ID |

  Scenario Outline: To verify that user is able to enter number under Customer by search dropdown field
    Given User is on Customer 360 Login Page
    And User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Verify User is able to view Below Options "<Options>" for Search Customer By Dropdown

    Examples:
      | Domain | Username  | Password         | Url                                            | Options                   |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | Mobile Number#Customer ID |

  Scenario Outline: To verify that user is redirected to bajaj pay  page when click on proceed Cta

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7899386777" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be able to view Bajaj Pay Section
    Then user should land on Bajaj Pay menu landing page with below details available:

    Examples:
      | Domain | Username  | Password         | Url                                            |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing |

  Scenario Outline: To verify that user is  on bajaj pay dashboard page
    Given User is on Customer 360 Login Page
    And User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7899386777" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page

    Examples:
      | Domain | Username  | Password         | Url                                            | bbpay                                                    |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard |

  Scenario Outline: To verify that user is able to view UPI under bajaj pay dashboard  page
    Given User is on Customer 360 Login Page
    And User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9330159182" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    Then User should be able to view Bajaj Pay Section
    Then User should be able to view UPI under bajaj pay dashboard page

    Examples:
      | Domain | Username  | Password         | Url                                            | bbpay                                                    |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard |

  Scenario Outline: To verify that user is able to click on UPI dropdown
    Given User is on Customer 360 Login Page
    And User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9330159182" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    Then User should be able to view Bajaj Pay Section
    Then User should be able to view UPI under bajaj pay dashboard page
    And Clicks on Bajaj Pay tab Option "UPI"

    Examples:
      | Domain | Username  | Password         | Url                                            | bbpay                                                    |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard |

  Scenario Outline: To verify that user is able to view Auto pay under UPI section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be able to view Bajaj Pay Section
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    And User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "UPI"
    Then Below Headers "<Headers>" should be displayed under "UPI" Tab

    Examples:
      | Domain | Username  | Password         | Url                                            | bbpay                                                    | Headers |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | AutoPay |

    @check
  Scenario Outline: To verify that details is display when user click on Auto pay
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9330159182" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be able to view Bajaj Pay Section
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    And User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "UPI"
    And Clicks on Bajaj Pay tab Sub Option "AutoPay"
    And User should be able to view below details under AutoPay "AutoPay" Section under UPI

    Examples:
      | Domain | Username  | Password         | Url                                            | bbpay                                                    | Headers          |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | Customer Profile |

  Scenario Outline: To verify that “No Data Available ” message is display if No Data Available
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be able to view Bajaj Pay Section
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    And User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "UPI"
    And Clicks on Bajaj Pay tab Sub Option "AutoPay"
    Then "No Data Available" message should be displayed for AutoPay of UPI when no data available

    Examples:
      | Domain | Username  | Password         | Url                                            | bbpay                                                    | Headers          |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | Customer Profile |

  Scenario Outline: To verify that details is display within a 2 second
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9330159182" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be able to view Bajaj Pay Section
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    And User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "UPI"
    And Clicks on Bajaj Pay tab Sub Option "AutoPay"
    Then Details should be display within a 2 second

    Examples:
      | Domain | Username  | Password         | Url                                            | bbpay                                                    | Headers          |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | Customer Profile |





