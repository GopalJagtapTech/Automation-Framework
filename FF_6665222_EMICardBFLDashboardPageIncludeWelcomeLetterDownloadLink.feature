Feature: FF_6665222_EMI Card BFL Dashboard Page - Include Welcome Letter Download Link for EMI Cards in Card Overview Section


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
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is able to select fields  under Customer by search dropdown field
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
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is able to enter number under Customer by search dropdown field
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

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
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

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
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

    @cc
  Scenario Outline: To verify that user is able to view EMI card under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100000441" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    Then Customer should be able to view below details on "Cards" tile "2030XXXXXXXX2602"

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

    @cc
  Scenario Outline: To verify that user is able to view EMI Card tile under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100000441" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    Then Customer should be able to view below details on "Cards" tile "2030XXXXXXXX2602"

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

    @cc
  Scenario Outline: To verify that user is able to view Download Welcome Letter icon  under EMI card tile
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100000441" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    Then "Welcome Letter" should be displayed for Card "2030XXXXXXXX2602"

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

    @data
  Scenario Outline: To verify that user is able to view Welcome letter for card issued post 13-07-2024
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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    Then "Welcome Letter" should be displayed for Card "2030XXXXXXXX2602"
    And Clicks on a "Welcome Letter" Document in "2030XXXXXXXX2602" Relation Tile

#    And Click on  Welcome letter under EMI card tile
#    And Verify the card issue date
#    Then User should be able to view Welcome letter for card issued post 13-07-2024

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


