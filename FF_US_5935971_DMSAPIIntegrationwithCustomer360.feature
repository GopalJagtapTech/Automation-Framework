Feature: FF_US_5935971: DMS API Integration with Customer360

  ########Requirement Not Available
  Scenario Outline: To verify that user is able to view scanned docs under loan, Insurance, FD tile
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
    And Verify the scanned docs under loan, Insurance, FD tile
    Then User should be  able to view scanned docs under loan, Insurace, FD tile

    Examples:
      | Domain  | Username  | Password      | Url                                            | Dashboard                                        | pdcurl                                        |
      | Partner | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | https://report.bajajfinserv.in/PDCReport.aspx |

  Scenario Outline: To verify  that user is redirected to dashboard page when user click on back button
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And  Click on back button

    Then User should be redirected to dashboard page when user click on back button
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that page is open on the same screen when  user  clicks on the Scanned Docs reports under loan ,FD, Insurance tile
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on scanned docs under loan, Insurance, FD tile
    Then Page should be open on the same screen when  user  clicks on the Scanned Docs reports under loan ,FD, Insurance tile
#  1. Search result
#  2.Doc view /PDF viewer

    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that user is able to display  basic functionalities of a PDF viewer
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on scanned docs under loan, Insurance, FD tile
    Then User should be  able to display below basic functionalities of a PDF viewer
#  1.Zoom in/out
#  2.Print
#  3. Save
#  4.Download
#  5.Rotated icon
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that on Left hand side  user is able to view Document List Section
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on scanned docs under loan, Insurance, FD tile
    Then User should be able to view  below details:
#  1.Document section at LHS
#  2.PDF viewer section RHS
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that user is able view list of available documents
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on scanned docs under loan, Insurance, FD tile
    Then User should be  able to view list of available documents
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that on right hand side user is able to view  PDF viewer section
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on scanned docs under loan, Insurance, FD tile
    Then On right hand side user should be able to view  PDF viewer section
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that user is able to click  on a document under the document list, the PDF document opens in the PDF viewer.
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on scanned docs under loan, Insurance, FD tile
    And Click on document in the document list
    Then User should be able to clicks on a document under the document list, the PDF document opens in the PDF viewer.
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that validation message is display  if No data is Available

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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on scanned docs under loan, Insurance, FD tile
    And Verify the validation message
    Then Validation message should be display  if No data is Available
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that user is able to Zoom in/out the PDF document
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on document in the doucment list
    And Click on ZOOM in /Out
    Then User should be able to Zoom in/out the PDF
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that user is able to download the PDF document
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on document in the doucment list
    And Click on  download icon
    Then User should be able to download the PDF document
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that user is able to navigate and scroll through the pages of a PDF document in the PDF viewer.
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on document in the doucment list
    Then  User should be able to scroll through the pages of the PDF document
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that  click on print CTA user is able to print the document
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on document in the doucment list
    And Click on print CTA
    Then  Click of print CTA user should be able to print the document
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that  click on  save CTA user is able to save  the document
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on document in the doucment list
    And Click on save  CTA
    Then  Click on  save CTA user should be  able to save  the document
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify that click on rotated icon user is able to rotate the document
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on document in the doucment list
    And Click on save  CTA
    Then  Click on rotated icon user should be  able to rotate the document
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  Scenario Outline: To verify “No documents Available” will be displayed when there are no documents.
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
    And Verify the scanned docs under loan, Insurance, FD tile
    And Click on document in the doucment list
    Then  No documents Available” should be displayed when there are no documents.
    Examples:
      | Domain               | Username | Password | Mobile number |
      | BFL.COM/ CC/ Partner |          |          |               |

  @cc
  Scenario Outline: To verify that validation message is display if No data is Available - Loans

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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Clicks on a "<Document>" Document in "405CDPHH064470" Relation Tile
    Then User should be able to view below pop up with header: "User not found"

    Examples:
      | Domain  | Username  | Password      | Url                                            | Dashboard                                        | Document     |
      | Partner | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Scanned Docs |

  @cc
  Scenario Outline: To verify that validation message is display if No data is Available - FD

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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on a "<Document>" Document in "544165" Relation Tile
    Then User should be able to view below pop up with header: "User not found"

    Examples:
      | Domain  | Username  | Password      | Url                                            | Dashboard                                        | Document     |
      | Partner | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Scanned Docs |

  @cc
  Scenario Outline: To verify that Pop up is closed when User clicks on Okay - Loans

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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Clicks on a "<Document>" Document in "405CDPHH064470" Relation Tile
    Then User should be able to view below pop up with header: "User not found"
    And Clicks on "Okay" CTA

    Examples:
      | Domain  | Username  | Password      | Url                                            | Dashboard                                        | Document     |
      | Partner | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Scanned Docs |

  @cc
  Scenario Outline: To verify that Pop up is closed when User clicks on Okay - FD

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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Fd" in Relations Overview
    And Clicks on a "<Document>" Document in "544165" Relation Tile
    Then User should be able to view below pop up with header: "User not found"

    Examples:
      | Domain  | Username  | Password      | Url                                            | Dashboard                                        | Document     |
      | Partner | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Scanned Docs |


  Scenario Outline: To verify that validation message is display if No data is Available - Insurance

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
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Clicks on a "<Document>" Document in "405CDPHH064470" Relation Tile
    Then User should be able to view below pop up with header: "User not found"

    Examples:
      | Domain  | Username  | Password      | Url                                            | Dashboard                                        | Document     |
      | Partner | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Scanned Docs |

