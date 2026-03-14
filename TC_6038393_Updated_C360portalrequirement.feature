Feature: TC_6038393_Updated_C360 portal requirement -Customers preferred language option for FC Letter

  Scenario Outline: To verify that User is able to redirect dashboard page

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

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  Scenario Outline: To verify that User is able to view   foreclosure letter for active loan

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
    Then "FC Letter" should be displayed only for loan which is marked as Active "405DPFKA311104"

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  Scenario Outline:To verify that on click of Foreclosure letter user is able to view pop up

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
    Then User should be able to view "Select a Language" pop up for language selection
    And User should be able to view Language Dropdown and Close Button for FC Letter

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        | Document  |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | FC Letter |


  Scenario Outline:To verify that on click of cross icon pop up get closed

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
    Then User should be able to view "Select a Language" pop up for language selection
    And Clicks on cross icon of Language Popup
    Then On click of cross icon Language popup should be closed

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        | Document  |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | FC Letter |


  Scenario Outline:To verify that user is able to select the Preferred language from dropdown

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
    Then User should be able to view "Select a Language" pop up for language selection
    Then User should be able to view number of language options "<Languages>" on pop up

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        | Document  | Languages                                                                                                                                               |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | FC Letter | ENGLISH#TAMIL#KANNADA#MARATHI#HINDI#GUJARATI#BENGALI#TELUGU#PUNJABI#KONKANI#MALAYALAM#URDU#ORIYA#ASSAMESE#KASHMIRI#MEITEILON#KHASI#MIZO#NAGAMESE#NEPALI |

  @fail
  Scenario Outline:To verify that user is able to view foreclosure letter in selected language

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
    Then User should be able to view "Select a Language" pop up for language selection
    And Selects a language "ENGLISH" from Language Dropdown
    Then UUser should be able to view foreclosure letter in selected language

    Examples:
      | Domain | Username  | Password      | Url                                            | Dashboard                                        | Document  |
      | CC     | 202432943 | Finserv@12345 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | FC Letter |






