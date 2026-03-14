Feature: FF_ 6543995_Change in Logic of Foreclosure Letter in C-360 Application with 3-in-1 API Integration and Vernacular Language Support

  @pass @run
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

  @pass @run
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

  @pass @run
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

  @pass @run
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

  @pass @run
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

  @pass @run
  Scenario Outline: To verify that user is able to view loan tile under dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9833728591" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    Then Customer should be able to view below details on loan cards

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view FC letter under loan download section
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Agreement Number" Option from Search Dropdown
    And Enters "P449PVR28003767" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Verify the "Disbursement Date" is of "past" Day in Loan Tile "P449PVR28003767"
    Then "FC Letter" should be displayed for loan "P449PVR28003767" is downloadable

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view FC letter under loan download section - Greyed
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Agreement Number" Option from Search Dropdown
    And Enters "P449PVR28003767" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Verify the "Disbursement Date" is of "future" Day in Loan Tile "449CBHKZ873554"
    Then "FC Letter" should be displayed for loan "449CBHKZ873554" is greyed

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that “FC letter is  available after <Current date+1>” message is displayed when user click on FC letter having disbursement date as current date
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Agreement Number" Option from Search Dropdown
    And Enters "P449PVR28003767" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Verify the "Disbursement Date" is of "future" Day in Loan Tile "449CBHKZ873554"
    Then "FC Letter" should be displayed for loan "449CBHKZ873554" is greyed
    And Clicks on a "FC Letter" Document in "449CBHKZ873554" Relation Tile
    Then Verify Toast message "Information" with title "FC letter will be available after" is Displayed
#    Then “FC letter should be   available after <Current date+1>” message should be  displayed when user click on FC letter having disbursement date as current date

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |



