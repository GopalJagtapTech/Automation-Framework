Feature: US_520452_Get Details Page for EMI CARD

  @pass @run
  Scenario Outline: To verify that user is able to view Get Details CTA under EMI card Tile
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    Then User should be able to view Get Details CTA under EMI card Tile "2030XXXXXXXX9234"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @NA
  Scenario Outline: To verify that pop is display when user clicks on get details CTA
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    Then Pop should be display when user clicks on get details CTA

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Cards Get Details on the page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Below Menus "<Menus>" Should be displayed to the user on LHS of "Cards" Details page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Menus                                 |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | EMI Card Details, Transaction Details |

  @pass @run
  Scenario Outline: To verify that user is able to view EMI Card details on the screen
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    Then Below Options "<Options>" should be displayed under the "EMI Card Details" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                     |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | EMI Card Details, Card Block/Unblock Status |

  @pass @run
  Scenario Outline: To verify that user is able to view Transaction Details on the screen
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Clicks on LHS Option "Transaction Details" in "Card" Details Page
    Then Below Options "<Options>" should be displayed under the "Transaction Details" section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Transaction Details, Annual Fees Payment History, Fees & Charges |

  @NA
#  Scenario Outline: To verify that validation message is display when user is no cards available
#    Given User is on Customer 360 Login Page
#    And  User should select Domain "<Domain>"
#    And User enters UserName "<Username>"
#    And User enters Password "<Password>"
#    And Clicks on LogIn Button
#    Then User should be redirected to Landing Page "<Url>"
#    And Selects "Mobile Number" Option from Search Dropdown
#    And Enters "9669919934" into Search Input Box
#    And Clicks on "PROCEED" Button
#    Then User should be redirected to Dashboard Page "<Dashboard>"
#    And Verify "Relations Overview" Section is displayed in DashBoard Page
#    And Select a Tab "Cards" in Relations Overview
#    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
#    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
#    And Verify the message
#
#    Then Below validation message should be display on the screen
##  "No Records Available."
#    Examples:
#      | Domain  | Username  | Password   | Url                                            | Dashboard                                        |
#      | CC | 1731sd1 | ----123 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

    @pass @run
  Scenario Outline: To verify that dropdown is display when user have multiple cards
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
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX1719"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    Then "Card No." Dropdown should be displayed on "Card details" page with available "Cards"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that  card details is automatically refresh and display in all the relevant variables When a user selects a card from the dropdown
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
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX1719"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    Then Selected Card number "2030XXXXXXXX6183" should be displayed in the dropdown, and the details related to that Card number should update accordingly

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view EMI Card details on the screen - EMI Card Details
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    Then Below Options "<Options>" should be displayed under the "EMI Card Details" section in "Cards" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                                                                                                                                     |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Card Type, Date of Activation, Card Source, Bank Acc Number, Bank Name, B Score, ECS Flag, ECS Avl Limit, ECS Validity, Risk Classification |

  @pass @run
  Scenario Outline: To verify that Card Block/Unblock Status is display in tabular form
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
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX1719"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    Then Below Options "Card Block/Unblock Status" should be displayed under the "EMI Card Details" section
    And User should be able to view below details under Card Block-Unblock Status "Card Block/Unblock Status"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @run
  Scenario Outline: To verify that user is able to view Date under Date section
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
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX1719"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    Then Below Options "Card Block/Unblock Status" should be displayed under the "EMI Card Details" section
    And User should be able to view "Date" under "Card Block/Unblock Status"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail @data @run
  Scenario Outline: To verify that user is able to view date in its format under date section -Card Block/Unblock Status
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
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX1719"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    Then Below Options "Card Block/Unblock Status" should be displayed under the "EMI Card Details" section
    Then User should be able to view date under date section of Card Block-Unblock Status

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @run
  Scenario Outline: To verify that user is able to view activity under activity section
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
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX1719"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    Then Below Options "Card Block/Unblock Status" should be displayed under the "EMI Card Details" section
    And User should be able to view "Activity" under "Card Block/Unblock Status"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @run
  Scenario Outline: To verify that user is able to view Type under Type section
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
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX1719"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    Then Below Options "Card Block/Unblock Status" should be displayed under the "EMI Card Details" section
    And User should be able to view "Type" under "Card Block/Unblock Status"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @run
  Scenario Outline: To verify that user is able to view Reason under Reason section
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
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX1719"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    Then Below Options "Card Block/Unblock Status" should be displayed under the "EMI Card Details" section
    And User should be able to view "Reason" under "Card Block/Unblock Status"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify the date, type, activity details when reason is “custsystemblkcode - custsystemBlkReason (blockReason))”
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Verify the custsystemblkcode – custsystemBlkReason
    Then When reason is “custsystemblkcode - custsystemBlkReason (blockReason)”then date, type, activity details should be as below:
#  1. “date=custSystemBlockDate”
#  2. ”type=Customer”
#  3. “activity=System Block”
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify the date, type, activity details when reason is “custsystemBlkReason (unblockReason))”
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And  Verify the “custsystemBlkReason (unblockReason
    Then when reason is “custsystemBlkReason (unblockReason)”then date, type, activity details should be as below:
#  1. “date=custSystemUnblockDate”
#  2. ”type=Customer”
#  3. “activity=System Unblock”

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify the date, type, activity details when reason is “cardsystemBlkCode – cardsystemBlkReason(blockReason)”
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Verify the cardsystemBlkCode – cardsystemBlkReason(blockReason
    Then when reason is “cardsystemBlkCode – cardsystemBlkReason(blockReason)”then date, type, activity details should be as below:
#  1. “date=crdSystemBlockDate”
#  2. ”type=Card”
#  3. “activity=System Block”
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify the date, type, activity details when reason is “cardsystemBlkReason (unblockReason)”
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Verify thecardsystemBlkReason (unblockReason)
    Then  when reason is cardsystemBlkReason (unblockReason)”then date, type, activity details should be as below:
#  1. “date=crdsystemUnblockDate”
#  2. ”type=Card”
#  3. “activity=System Unblock”
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify the date, type, activity details when reason is “crdsystemUnblockDate”
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And  Verify the  crdsystemUnblockDates

    Then  when reason is “crdsystemUnblockDate”then date, type, activity details should be as below:
#  1. “date=crdsystemUnblockDate”
#  2. ”type=Card”
#  3. “activity=System Unblock”
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline:To verify the date, type, activity details when reason is “cardManualBlockcode – cardManualBlockReason”
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And  Verify the cardManualBlockcode – cardManualBlockReason

    Then  when reason is “cardManualBlockcode – cardManualBlockReason”then date, type, activity details should be as below:
#  1. “date=cardManualBlockDate”
#  2. ”type=Card”
#  3. “activity=Manual Block”
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline:To verify the date, type, activity details when reason is “cardManualBlockReason”
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And  Verify the cardManualBlockReason

    Then  when reason is “cardManualBlockReason”then date, type, activity details should be as below:
#  1. “date=custManualUnblockDate”
#  2. ”type=Customer”
#  3. “activity=Manual Unblock”
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify the date, type, activity details when reason is “custManualBlkCode – custManualBlkReason”
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And  Verify the custManualBlkCode – custManualBlkReason
    Then when reason is “custManualBlkCode – custManualBlkReason then date, type, activity details should be as below:
#  1. “date=crdManualBlockDate”
#  2. ”type=Card”
#  3. “activity=Manual Block”
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify the date, type, activity details when reason is “custManualBlkReason”
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And   Verify the custManualBlkReason
    Then when reason is “custManualBlkReason”then date, type, activity details should be as below:
#  1. “date=crdManualUnblockDate”
#  2. ”type=Card”
#  3. “activity=Manual UnBlock”
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @run
  Scenario Outline: To verify that “No data Available“ message is display when no data aviable - EMI Card Details - Card Block/Unblock Status
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Clicks on LHS Option "Transaction Details" in "Card" Details Page
    Then "No records found" message should be displayed for "Card Block/Unblock Status" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @run
  Scenario Outline: To verify that “No data Available“ message is display when no data aviable - Transaction Details - Transaction Details
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Clicks on LHS Option "Transaction Details" in "Card" Details Page
    Then "No records found" message should be displayed for "Transaction Details" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @run
  Scenario Outline: To verify that “No data Available“ message is display when no data aviable - Transaction Details - Annual Fees Payment History
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Clicks on LHS Option "Transaction Details" in "Card" Details Page
    Then "No records found" message should be displayed for "Annual Fees Payment History" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data @run
  Scenario Outline: To verify that user is able to view Transaction Details on the screen - Transaction Details
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Clicks on LHS Option "Transaction Details" in "Card" Details Page
    And User should be able to view below details under Transaction Details "Transaction Details"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is able to view  TxnDate Time in descending order
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And   Verify the  TxnDate Time in descending order
    Then User should be  able to view  TxnDate Time in descending order
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that search box is display for all transactions
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And   Verify the transactions

    Then Search box should be  display for all transactions
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is able to view pagination on the screen
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Verify the pagination
    Then User should be  able to view pagination on the screen
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @data @run
  Scenario Outline: To verify that user is able to view Annual Fees Payment History in tabular format
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Clicks on LHS Option "Transaction Details" in "Card" Details Page
    And User should be able to view below details under Annual Fees Payment History "Annual Fees Payment History"


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is able to view due month in descending order.
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And   Verify the  due month in descending order.

    Then User should be able to view due month in descending order
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that User is able to view Amount in decimal form till 2 decimal places
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And   Verify the  due month in descending order
    Then User should be able to view Amount in decimal form till 2 decimal places
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that “No data Available “ message is display when no data aviable
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And   Verify the message
    Then “No data Available “ message should be display when no data available
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify that user is able to view pagination on the screen
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And   Verify the pagination
    Then User should be  able to view pagination on the screen
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Fees & Charges section on the screen
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9669919934" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Relations Overview" Section is displayed in DashBoard Page
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX9234"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Clicks on LHS Option "Transaction Details" in "Card" Details Page
    Then Below Options "<Options>" should be displayed under the "Fees & Charges" section in "Card" Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Options                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | DATE, CARD NUMBER, CHARGES, AMOUNT |


  @run
  Scenario Outline: To verify that user is able to view Bank Acc Number in masked format in EMI Card details
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
    And Select a Tab "Cards" in Relations Overview
    And Clicks on Get details CTA of "Cards" Relation - "2030XXXXXXXX1719"
    Then User Should be redirected to the "Cards" Details page "https://customer360uat.bajajfinserv.in/cardDetails"
    And Bank Acc Number under EMI Card Details should be masked in required format

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |



