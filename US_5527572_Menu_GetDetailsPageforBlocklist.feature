Feature: US_5527572_Menu_Get Details Page for Blocklist

  ###9960820670
  @pass @run
  Scenario Outline: To verify that user is able to view block list under header section on landing page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Customer Blocklist" under header section on landing page

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline:To verify that user view mention content when clicks on block list under header section on landing page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Customer Blocklist" under header section on landing page
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And User should be able to view "Search Customer, Block Customer" Radio Buttons under Customer Blocklist Page

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline: To verify that  user is able to view search customer
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Customer Blocklist" under header section on landing page
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And User should be able to view "Search Customer" Radio Buttons under Customer Blocklist Page

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline: To verify below content is visible when clicks on search customer radio button

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Customer Blocklist" under header section on landing page
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Search Customer" Radio Button in Customer Blocklist Page
    Then User should be able to view below content for Search Customer

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline: To verify that user is able  to enter the mobile number under mobile number field
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Customer Blocklist" under header section on landing page
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Search Customer" Radio Button in Customer Blocklist Page
    Then User should be able to enter mobile number under mobile number field

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline:To verify that below content is visible when click on submit CTA after entering mobile number
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Customer Blocklist" under header section on landing page
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Search Customer" Radio Button in Customer Blocklist Page
    And Enters "<Mobile number>" in Search Customer Mobile Number Box
    And Clicks on "Search" CTA
    Then User should be able to view Below Table for Search Customer

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline:To verify that refresh the page when click on Reset CTA after entering mobile number
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Customer Blocklist" under header section on landing page
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Search Customer" Radio Button in Customer Blocklist Page
    And Enters "<Mobile number>" in Search Customer Mobile Number Box
    And Clicks on "Search" CTA
    Then User should be able to view Search Customer Table
    And Clicks on "Reset" CTA
    Then User should be able to refresh the same page and the Table should disappear

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @data
  Scenario Outline:To verify validation message is visible when DNC = N in API when entered mobile number
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
#  when Click on customer Block list under landing page
    And Click on search customer
    And Verify the DNC Message
    Then Validation message should be display ‘Number not registered in DNC
    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline:To verify below content is visible when DNC = Y in API when entered mobile number
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Customer Blocklist" under header section on landing page
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Search Customer" Radio Button in Customer Blocklist Page
    And Enters "<Mobile number>" in Search Customer Mobile Number Box
    And Clicks on "Search" CTA
    Then User should be able to view Below Table for Search Customer

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline:To verify that below content is visible when clicks on Block customer radio button under block list page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Block Customer" Radio Button in Customer Blocklist Page
    Then Below fields should be displayed for Block Customer Button

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline:To verify that user is able to enter mobile number under mobile number field
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Block Customer" Radio Button in Customer Blocklist Page
    Then User should be able to enter mobile number under mobile number fields of Block Customer


    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline:To verify that Pass Values from Origin Drop down - Block Customer
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Block Customer" Radio Button in Customer Blocklist Page
    Then User should be able to view Origin Dropdown "<Options>" under origin section

    Examples:
      | Domain  | Username | Password | Url                                            | Options                                                                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | Social Media, Email, IVR, Branch, RBISMT, Bajaj Health, BHFL/Bajaj Housing, BFDL/Bajaj Markets |

  @data
  Scenario Outline:To verify validation message is visible when entered already registered mobile number
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Block Customer" Radio Button in Customer Blocklist Page
    And Click on origin drop down
    And Enter already registered mobile number

    Then Validation message should be display ‘Already Registered’ in API Response
    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @data
  Scenario Outline:To verify that success message is visible when  entered new mobile number

    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
#  when Click on customer Block list under landing page
    And Click on block customer
    And Click on origin drop down
    And Enter already registered mobile number
    And Verify the message

    Then Success message should be display ‘Record Inserted Successfully’
    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @data
  Scenario Outline:To verify that data appears when clicks on submit CTA after entering mobile number
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
#  when Click on customer Block list under landing page
    And Click on block customer
    And Click on origin drop down
    And Enter already registered mobile number
    And Click on  submit CTA

    Then User should be able to view submit CTA
    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline:To verify that user is able to click on reset CTA
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User should be able to view "Customer Blocklist" under header section on landing page
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Block Customer" Radio Button in Customer Blocklist Page
    And Clicks on "Block Customer" Radio Button in Customer Blocklist Page
    And Enters "<Mobile number>" Mobile Number in Mobile number Field
    And Selects "Email" Option from Origin Dropdown
    And Clicks on "Reset" CTA
    Then Page should be refreshed and the Contents entered "<Mobile number>" should be removed

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @data
  Scenario Outline:To verify that validation message  If no data is available
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
#  when Click on customer Block list under landing page
    And Click on block customer
    And Click on origin drop down
    And Enter already registered mobile number
    And Verify the Message
    Then  "No Records Available"should be  display
    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @OOS
  Scenario Outline:To verify that The widget is load within an acceptable time frame (less than 1 second).
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
#  when Click on customer Block list under landing page
    And Click on block customer
    And Click on origin drop down
    And Enter already registered mobile number
    And Verify the timeframe
    Then  The widget should be load within an acceptable timeframe (less than 1 second).Examples:

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |



#############New
  @pass @run
  Scenario Outline:To verify that validation message without Mobile Number - Search Customer
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Search Customer" Radio Button in Customer Blocklist Page
    And Clicks on "Search" CTA
    Then "Please Enter Valid Mobile Number" Toast message should be displayed

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |

  @pass @run
  Scenario Outline:To verify that Special Characters are not allowed in Mobile Number Field - Search Customer
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Search Customer" Radio Button in Customer Blocklist Page
    Then Mobile Number Field should not accept other than Numericals "<Characters>"

    Examples:
      | Domain  | Username | Password | Url                                            | Characters                           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | @@#@#@, asadasaa, @DS    , GSDSDFSDF |

  @pass @run
  Scenario Outline:To verify that Special Characters are not allowed in Mobile Number Field - Block Customer
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Block Customer" Radio Button in Customer Blocklist Page
    Then Below fields should be displayed for Block Customer Button
    Then Mobile Number Field should not accept other than Numericals "<Characters>"

    Examples:
      | Domain  | Username | Password | Url                                            | Characters                           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | @@#@#@, asadasaa, @DS    , GSDSDFSDF |

  @pass @run
  Scenario Outline:To verify that validation message without Input - Block Customer
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Block Customer" Radio Button in Customer Blocklist Page
    Then Below fields should be displayed for Block Customer Button
    And Enters "9960820670" Mobile Number in Mobile number Field
    And Selects "Email" Option from Origin Dropdown
    And Clicks on "Submit" CTA
    Then "Please Enter Valid Input" Toast message should be displayed for Input

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |


  @pass @run
  Scenario Outline:To verify that on click of Reset Button - Block Customer
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And User Clicks on "Customer Blocklist" Option in Top Menu under Landing page
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/customerblacklist" Page
    And Clicks on "Block Customer" Radio Button in Customer Blocklist Page
    And Enters "<Mobile number>" Mobile Number in Mobile number Field
    And Selects "Email" Option from Origin Dropdown
    And Clicks on "Reset" CTA
    Then Page should be refreshed and the Contents entered "<Mobile number>" should be removed

    Examples:
      | Domain  | Username | Password | Url                                            | Mobile number |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | 9960820670    |






