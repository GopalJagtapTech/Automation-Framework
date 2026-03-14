Feature: FF_ 6486132_Relations Overview_Customer Consent Process for Insurance Child LAN Closures

@fail @run
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
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail @run
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
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to enter number under Customer by search dropdown field
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "7499129437" into Search Input Box

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is redirected to dashboard page when click on proceed Cta
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view “Consent SMS” CTA between SOA and RPS document
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    Then User should be able to view "Consent SMS" CTA for "69MHLGMI271937" Tile

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is not able to view "Consent SMS" CTA when condition is not matched

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    Then Users should not able to view "Consent SMS" CTA when below condition is not matched for "69MRDDMI271931"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that user is able to view "Consent" nudge beside agreement no. on Loan tile
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    Then User should be able to view "Consent" nudge beside agreement no on Loan tile "69MHLGMI271937"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that nudge is not displayed when conditions are not matched
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    Then "Consent" Nudge should not be displayed when conditions are not matched for tile "69MRDDMI271931"

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that confirmation popup is displayed with the message when user click on "Consent SMS" CTA
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Clicks on a "Consent SMS" Document in "69MHLGMI271937" Relation Tile
    Then "Are you sure you want to trigger SMS?" Popup with options Yes and No should be displayed


    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that Docpod API is triggered  when user click on Yes CTA
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Clicks on a "Consent SMS" Document in "69MHLGMI271937" Relation Tile
    And Clicks on "YES" CTA of Consent SMS Popup
    Then Docpod API should be triggered when user click on Yes CTA

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that user is able to view dashboard page when click on No CTA
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Clicks on a "Consent SMS" Document in "69MHLGMI271937" Relation Tile
    And Clicks on "NO" CTA of Consent SMS Popup
    Then User should be able to view dashboard page when click on No CTA

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that toast message  "Consent SMS has been sent" is displayed on successful trigger
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Clicks on a "Consent SMS" Document in "69MHLGMI271937" Relation Tile
    And Clicks on "YES" CTA of Consent SMS Popup
    Then Confirmation message "Consent SMS has been sent" should be displayed on successful trigger

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @NA
  Scenario Outline:To verify that toast message is displayed when consent SMS mechanism failed
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Click on  Consent  CTA
    Then Toast message should be displayed when consent SMS mechanism failed

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @NA
  Scenario Outline: To verify that consent API fields mapping is done as per shared spec (“fileds” sheet attached)
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100024328" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Click on  Consent  CTA
    Then Consent API fields mapping should be done as per shared spec

    Examples:
      | Domain | Username  | Password         | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Lendingkart@2024 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |







