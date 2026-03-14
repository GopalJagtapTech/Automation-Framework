Feature: FF_6272014_C360 portal requirement -Customers preferred 20 languages option for SOA

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
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

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
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  Scenario Outline: To verify that user is redirected to dashboard page when click on proceed Cta

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245438899" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is dashboard page

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245438899" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is able to view loan tile under dashboard page

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245438899" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Tiles are displayed under Relations

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is able to view loan tile under dashboard page

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "245438899" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Tiles are displayed under Relations

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is able to view SOA doc under loan tile

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
    Then "SOA" should be displayed only for loan which is marked as Active "405DPFKA311104"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  Scenario Outline: To verify that user is able to click on SOA under loan tile

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
    And Clicks on a "<Document>" Document in "405DPFKA311104" Relation Tile
    Then Customer should be able to view below Icons for the "<Document>"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        | Document |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | SOA      |

  Scenario Outline: To verify that pop up is display when user click on SOA

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
    And Clicks on a "<Document>" Document in "405DPFKA311104" Relation Tile
    Then Customer should be able to view below Icons for the "<Document>"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        | Document |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | SOA      |

  Scenario Outline: To verify that select languages  pop up is display when user click on PDF option

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
    And Clicks on a "<Document>" Document in "405DPFKA311104" Relation Tile
    And Clicks on "PDF" Icon of the "SOA" Document
    Then User should be able to view "Select a Language" pop up for language selection

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        | Document |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | SOA      |

  Scenario Outline: To verify that 20 languages option is display when user click on select languages dropdown

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
    And Clicks on a "<Document>" Document in "405DPFKA311104" Relation Tile
    And Clicks on "PDF" Icon of the "SOA" Document
    Then User should be able to view "Select a Language" pop up for language selection
    Then User should be able to view number of language options "<Languages>" on pop up

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        | Document | Languages                                                                                                                                               |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | SOA      | ENGLISH#TAMIL#KANNADA#MARATHI#HINDI#GUJARATI#BENGALI#TELUGU#PUNJABI#KONKANI#MALAYALAM#URDU#ORIYA#ASSAMESE#KASHMIRI#MEITEILON#KHASI#MIZO#NAGAMESE#NEPALI |


  Scenario Outline: To verify that  downloaded  PDF in selected language when user  is select any language

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
    And Clicks on a "<Document>" Document in "405DPFKA311104" Relation Tile
    And Clicks on "PDF" Icon of the "SOA" Document
    Then User should be able to view "Select a Language" pop up for language selection
    And Clicks on "PDF" Icon of the "SOA" Document
    And Selects a language "ENGLISH" from Language Dropdown
    Then Verify the Downloaded PDF "405DPFKA311104_SOA.pdf" in selected language


    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        | Document | Languages                                                                                                                                               |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | SOA      | ENGLISH#TAMIL#KANNADA#MARATHI#HINDI#GUJARATI#BENGALI#TELUGU#PUNJABI#KONKANI#MALAYALAM#URDU#ORIYA#ASSAMESE#KASHMIRI#MEITEILON#KHASI#MIZO#NAGAMESE#NEPALI |



