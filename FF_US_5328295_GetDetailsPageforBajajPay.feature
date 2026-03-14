Feature: FF_US_5328295_Get Details Page for Bajaj Pay

  @pass @run
  Scenario Outline: To verify user land on landing page when click on Bajaj Pay Menu
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
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @fail @run
  Scenario Outline: To verify the list of options displayed under “SEARCH CUSTOMER BY” dropdown -Landing Page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Clicks on "Bajaj Pay" Option under Top Section
    And Verify User is able to view Below Options "<Options>" for Search By Dropdown

    Examples:
      | Domain  | Username | Password | Url                                            | Options                                               |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | Mobile Number#Customer ID#Transaction ID#Email ID#SRN |

  @pass @run
  Scenario Outline:To verify the components displayed when user click on Bajaj Pay menu landing page
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
    Then below list of components should be displayed:

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @fail @run
  Scenario Outline:To verify the list of options displayed under “SEARCH CUSTOMER BY” dropdown
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
    And Verify User is able to view Below Options "<Options>" for Search By Dropdown

    Examples:
      | Domain  | Username | Password | Url                                            | Options                                               |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | Mobile Number#Customer ID#Transaction ID#Email ID#SRN |

  @pass @run
  Scenario Outline: To verify the details displayed under “Personal Widget Info”
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
    And Verify Contents of Personal Info Section in DashBoard Page
    And Verify Additional Info of User in Personal Info Section in DashBoard Page

    Examples:
      | Domain  | Username | Password | Url                                            | Options                                               |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | Mobile Number#Customer ID#Transaction ID#Email ID#SRN |

  @pass @run
  Scenario Outline: To verify the masking format of Mobile Number
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
    And Verify Mobile Number Masking Pattern in Personal Info

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data
  Scenario Outline: To verify the masking format of DOB
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
    And Verify Date of Birth Masking Pattern in Personal Info

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data
  Scenario Outline: To verify the masking format of Emailid
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
    And Verify Email ID Masking Pattern in Personal Info

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @run
  Scenario Outline: To verify the masking format of Address
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
    And Verify Address Masking Pattern in Personal Info

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @run
  Scenario Outline: To verify the masking format of PAN
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
    And Verify PAN Masking Pattern in Personal Info

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline: To verify details displayed in Personal Info section when customer id is not found against the respective searched parameter
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
    Then When Customer Id is not found against searched parameter then below details should be displayed

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @NA @data
  Scenario Outline: To verify the dropdown option is available incase of multiple cust id are available
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
    And Click “SEARCH CUSTOMER BY” dropdown
    And Click on “Personal Widget Info”
    Then beside of customer id, dropdown should be available to select the customer id from available list

    Examples:
      | Domain | Username | Password | Url                                            |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @NA
  Scenario Outline: To verify the records are updated as per selected customer id from dropdown
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
    Then records should be updated as per the selected cust id from dropdown

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline: To verify the details displayed under “Service Segment Widget”
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
    And Verify Service Segment Section in Bajaj Pay Page

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify the value of “type” displayed when cust id is not found against mobile number
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
    Then Then Type = NTB should be displayed when cust id is not found against mobile number

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @fail @run
  Scenario Outline:To verify the Quick Links displayed when Cust ID is not available
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
    And Verify Quick Links Section in DashBoard Page with Links "<Links>"

    Examples:
      | Domain  | Username | Password | Url                                            | Links                                     |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | Raise SR#Chat History#RMS#Request History |

  @fail @run
  Scenario Outline:To verify the options disabled for NTB user
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
    And Verify the options displayed under Quick Links Widget
    Then Below Options "<Options>" should be disabled if User is NTB

    Examples:
      | Domain  | Username | Password | Url                                            | Options                  |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | Raise SR,Request History |

  @NA
  Scenario Outline:To verify the details displayed under Request History option are same as the details displayed under Service Request Widget
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    And  Select Mobile Number
    And Enter the mobile number
    And Click on Proceed CTA
    And Verify the details displayed under Service Request Widget available on BFL Dashboard page
    And  Click on Bajaj Pay Menu
    And Click “SEARCH CUSTOMER BY” dropdown
    And Select Mobile Number
    And Enter the mobile number
    And Click on Proceed CTA
    And  Verify the details displayed under Request History option
    Then Details displayed under both the sections should be same

    Examples:
      | Domain | Username | Password | Url                                            |
      | CC     | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify the headers displayed under BBPS (Bharat Bill Payment System) section
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
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    Then User should be able to view Bajaj Pay Section
    Then Below Headers "<Headers>" should be displayed under "BBPS" Tab

    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    | Headers                                          |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | Transactions, BBPS Dispute, PG Complaint Details |

  @pass @run
  Scenario Outline:To verify the details displayed under Transactions
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
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    Then User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "BBPS"
    And Clicks on Bajaj Pay tab Sub Option "Transactions"
    And User should be able to view below details under Transactions "Transactions" Section

    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard |

  @data  @run
  Scenario Outline: To verify the details displayed when user have no data in Transaction
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
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    Then User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "BBPS"
    And Clicks on Bajaj Pay tab Sub Option "Transactions"
    Then "No Data Available" message should be displayed for Transactions when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard |

  @data  @run
  Scenario Outline: To verify the details displayed under BBPS Dispute
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
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    Then User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "BBPS"
    And Clicks on Bajaj Pay tab Sub Option "BBPS Dispute"
    And User should be able to view below details under BBPS Dispute "BBPS Dispute" Section


    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard |

  @pass @run
  Scenario Outline: To verify the details displayed when user have no data in BBPS Dispute
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
    And Clicks on Bajaj Pay tab Option "BBPS"
    And Clicks on Bajaj Pay tab Sub Option "BBPS Dispute"
    Then "No Data Available" message should be displayed for BBPS Dispute when no data available

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |


  @pass @run
  Scenario Outline: To verify the details displayed under PG Complaint Details
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
    And Clicks on Bajaj Pay tab Option "BBPS"
    And Clicks on Bajaj Pay tab Sub Option "PG Complaint Details"
    And User should be able to view below details under PG Complaint Details "PG Complaint Details" Section


    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @run
  Scenario Outline:To verify the details displayed when user have no data in PG Complaint Details
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
    And Clicks on Bajaj Pay tab Option "BBPS"
    And Clicks on Bajaj Pay tab Sub Option "PG Complaint Details"
    Then "No Data Available" message should be displayed for PG Complaint Details when no data available

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify the headers displayed under Wallet section
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
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    And User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "Wallet"
    Then Below Headers "<Headers>" should be displayed under "Wallet" Tab

    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    | Headers                               |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | Wallet, Wallet-S2S, FASTag, Gift Card |

  @pass @run
  Scenario Outline:To verify the sub-headers displayed under Wallet header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    Then Below Sub Headers "<SubHeaders>" should be displayed under "Wallet" Header

    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    | SubHeaders                                                                                      |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | Transactions, Passbook, Interop Transactions, Wallet Details, Wallet Auto Load, Wallet Activity |

  @data  @run
  Scenario Outline: To verify the details displayed under Transactions of Wallet header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Transactions" under "Wallet"
    And User should be able to view below details under Transactions "Transactions" Section under "Wallet"


    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify the details displayed under Transactions of Wallet header when no data Available
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Transactions" under "Wallet"
    Then "No Data Available" message should be displayed for Transactions under Wallet when no data available


    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @run
  Scenario Outline: To verify the details displayed under Passbook of Wallet header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Passbook" under "Wallet"
    And User should be able to view below details under Passbook "Passbook" Section under "Wallet"

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify the details displayed under Passbook of Wallet header when no data Available
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Passbook" under "Wallet"
    Then "No Data Available" message should be displayed for Passbook under Wallet when no data available


    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @run
  Scenario Outline: To verify the details displayed under Interop Transactions of Wallet header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Interop Transactions" under "Wallet"
    And User should be able to view below details under Interop Transactions "Interop Transactions" Section under "Wallet"

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify the details displayed under Interop Transactions of Wallet header when no data Available
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Interop Transactions" under "Wallet"
    Then "No Data Available" message should be displayed for Interop Transactions under Wallet when no data available

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline: To verify the details displayed under Wallet Details of Wallet header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet Details" under "Wallet"
    And User should be able to view below details (Single Record) under Wallet Details "Wallet Details" Section under "Wallet"

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @run
  Scenario Outline: To verify the details displayed under Wallet Details of Wallet header when no data Available
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet Details" under "Wallet"
    Then "No Data Available" message should be displayed for Wallet Details under Wallet when no data available

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline: To verify the details displayed under Wallet Auto Load of Wallet header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet Auto Load" under "Wallet"
    And User should be able to view below details (Single Record) under Wallet Auto Load "Wallet Auto Load" Section under "Wallet"

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify the details displayed under Wallet Auto Load of Wallet header when no data Available
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet Auto Load" under "Wallet"
    Then "No Data Available" message should be displayed for Wallet Auto Load under Wallet when no data available

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @run
  Scenario Outline: To verify the details displayed under Wallet Activity of Wallet header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet Activity" under "Wallet"
    And User should be able to view below details under Wallet Activity "Wallet Activity" Section under "Wallet"

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @run
  Scenario Outline: To verify the details displayed under Wallet Activity of Wallet header when no data Available
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet Activity" under "Wallet"
    Then "No Data Available" message should be displayed for Wallet Activity under Wallet when no data available

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

    #########

  @pass @run
  Scenario Outline:To verify the sub-headers displayed under Wallet-S2S header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet-S2S"
    Then Below Sub Headers "<SubHeaders>" should be displayed under "Wallet-S2S" Header

    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    | SubHeaders                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | TXN History, OTP History, Refund Transactions |

  @data  @run
  Scenario Outline: To verify the details displayed under TXN History of Wallet-S2S header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet-S2S"
    And Clicks on Bajaj Pay tab Sub Option "TXN History" under "Wallet"
    And User should be able to view below details under TXN History "TXN History" Section under "Wallet"

    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    | SubHeaders                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | TXN History, OTP History, Refund Transactions |

  @pass @run
  Scenario Outline:To verify the details displayed when user have no data in TXN History of Wallet-S2S header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet-S2S"
    And Clicks on Bajaj Pay tab Sub Option "TXN History" under "Wallet"
    Then "No Data Available" message should be displayed for TXN History when no data available

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @run
  Scenario Outline: To verify the details displayed under OTP History of Wallet-S2S header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet-S2S"
    And Clicks on Bajaj Pay tab Sub Option "OTP History" under "Wallet"
    And User should be able to view below details under OTP History "OTP History" Section under "Wallet"

    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    | SubHeaders                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | TXN History, OTP History, Refund Transactions |

  @pass @run
  Scenario Outline:To verify the details displayed when user have no data in OTP History of Wallet-S2S header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet-S2S"
    And Clicks on Bajaj Pay tab Sub Option "OTP History" under "Wallet"
    Then "No Data Available" message should be displayed for OTP History when no data available

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @run
  Scenario Outline: To verify the details displayed under Refund Transactions of Wallet-S2S header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet-S2S"
    And Clicks on Bajaj Pay tab Sub Option "Refund Transactions" under "Wallet"
    And User should be able to view below details under Refund Transactions "Refund Transactions" Section under "Wallet"

    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    | SubHeaders                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | TXN History, OTP History, Refund Transactions |

  @pass @run
  Scenario Outline:To verify the details displayed when user have no data in Refund Transactions of Wallet-S2S header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Wallet-S2S"
    And Clicks on Bajaj Pay tab Sub Option "Refund Transactions" under "Wallet"
    Then "No Data Available" message should be displayed for Refund Transactions when no data available

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |



    #########
  @pass @run
  Scenario Outline:To verify user is redirected to the respective URL when click on Fastag header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "FASTag"
    And Verify User redirected to "https://service360uat.bajajfinserv.in/fastag" Url in New Tab

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify user is redirected to the respective URL when click on Gift Card header
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
    And Clicks on Bajaj Pay tab Option "Wallet"
    And Clicks on Bajaj Pay tab Sub Option "Gift Card"
    And Verify User redirected to "https://service360uat.bajajfinserv.in/giftcard" Url in New Tab

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify the headers displayed under UPI section
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
      | Domain  | Username | Password | Url                                            | bbpay                                                    | Headers             |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard | Transactions, Refer |

  @data  @run
  Scenario Outline: To verify the details displayed under Transactions of UPI section
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
    And Clicks on Bajaj Pay tab Option "UPI"
    And Clicks on Bajaj Pay tab Sub Option "Transactions"
    And User should be able to view below details under Transactions "Transactions" Section under UPI

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify the details displayed when user have no data in UPI Section - Transactions
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
    And Clicks on Bajaj Pay tab Option "UPI"
    And Clicks on Bajaj Pay tab Sub Option "Transactions"
    Then "No Data Available" message should be displayed for Transactions of UPI when no data available

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @data  @run
  Scenario Outline: To verify the details displayed under Refer of UPI Section
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
    And Clicks on Bajaj Pay tab Option "UPI"
    And Clicks on Bajaj Pay tab Sub Option "Refer"
    And User should be able to view below details under Refer "Refer" Section under UPI

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify the details displayed when user have no data in Refer of UPI Section
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
    And Clicks on Bajaj Pay tab Option "UPI"
    And Clicks on Bajaj Pay tab Sub Option "Refer"
    Then "No Data Available" message should be displayed for Refer of UPI when no data available

    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @pass @run
  Scenario Outline:To verify the details displayed when customer click on Games Section
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
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    And User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "Games"
    And User should be able to view below details under Games "Games" Section

    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard |

  @data  @run
  Scenario Outline: To verify the details displayed when user have no data in Games Section
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
    Then User should be redirected to Bajaj Pay Dashboard "<bbpay>" Page
    And User should be able to view Bajaj Pay Section
    And Clicks on Bajaj Pay tab Option "Games"
    Then "No Data Available" message should be displayed for Games when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | bbpay                                                    |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/bajajpaydashboard |

  @NA
  Scenario Outline:To verify Horizontal scroll option is available when details are available in tabular format
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
    And Click “SEARCH CUSTOMER BY” dropdown
    And Check all the pages on which details are available in tabular format
    Then Horizontal scroll option should be available when details are available in tabular format
    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |

  @NA
  Scenario Outline:To verify Vertical scroll option is available when details are available in tabular format
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
    And Click “SEARCH CUSTOMER BY” dropdown
    And Check all the pages on which details are available in tabular format
    Then Vertical scroll option should be available when details are available in tabular format
    Examples:
      | Domain  | Username | Password | Url                                            |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing |







