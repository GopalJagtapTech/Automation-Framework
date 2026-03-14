Feature: FF_6486989_AccurateMandate Status Display in C-360 System

  @pass @run
  Scenario Outline: To verify that User is able to redirect dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100002075" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view mandate status field on dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "101615413" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    Then user should be able to view "Mandate Status" field on dashboard page

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that options displayed under mandate status field
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "101615413" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Mandate Status in Service Segment Section- "Rejected"

#    Then Below options should be display under mandate status field:
#  1.Accepted
#  2.Rejected

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that on click of value of mandate status user is redirected to mandate details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "101615413" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Mandate Status in Service Segment Section- "Rejected"
    And Clicks on Mandate Status "Rejected" in Service Segment Section
    Then Verify Customer redirected to "https://customer360uat.bajajfinserv.in/mandatedetails" Url

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline:To verify that details displayed on mandate details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "101615413" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Mandate Status in Service Segment Section- "Rejected"
    And Clicks on Mandate Status "Rejected" in Service Segment Section
    Then Verify Customer redirected to "https://customer360uat.bajajfinserv.in/mandatedetails" Url
#    And Verify Contents in Mandate Details Page
    And Verify the Table Contents in Mandate Details Page
#    And click on mandate status
#  ThenBelow details should be display:
#  1.CUSTOMER ID
#  2.LAN NO
#  3.CUSTOMER NAME
#  4.MICR CODE
#  5.BANK ACC NUMBER
#  6.BANK NAME
#  7.REJECTION REASON
#  8.DATE OF REJECTION

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Accepted and Rejected LANs with details on mandate details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "101615413" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify Mandate Status in Service Segment Section- "Rejected"
    And Clicks on Mandate Status "Rejected" in Service Segment Section
    Then Verify Customer redirected to "https://customer360uat.bajajfinserv.in/mandatedetails" Url
    And User should be able to view "Status" under "Mandate Details" in Mandate Details Page

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

    @pass @run
  Scenario Outline: To verify that options displayed under mandate status field - Accepted
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
    And Verify Mandate Status in Service Segment Section- "Accepted"

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that on click of value of mandate status user is redirected to mandate details page - Accepted
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
    And Verify Mandate Status in Service Segment Section- "Accepted"
    And Clicks on Mandate Status "Accepted" in Service Segment Section
    Then Verify Customer redirected to "https://customer360uat.bajajfinserv.in/mandatedetails" Url

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline:To verify that details displayed on mandate details page - Accepted
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
    And Verify Mandate Status in Service Segment Section- "Accepted"
    And Clicks on Mandate Status "Accepted" in Service Segment Section
    Then Verify Customer redirected to "https://customer360uat.bajajfinserv.in/mandatedetails" Url
    And Verify the Table Contents in Mandate Details Page

    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |




  @data
  Scenario Outline: To verify that user is able to view value of mandate status field is Accepted when all loan is having Accepted status on mandate details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100002075" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And click on mandate status
#  Thenuser should be able to view value of mandate status field is Accepted when all loan is having Accepted status on mandate details page


    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is able to view value of mandate status field is Rejected when any one loan is having Rejected status on mandate details page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "100002075" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And click on mandate status
#  Thenuser should be able to view value of mandate status field is Rejected when any one of loan is having Rejected status on mandate details page
    Examples:
      | Domain | Username  | Password       | Url                                            | Dashboard                                        |
      | CC     | 202412473 | Amaravati@1999 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |
  




