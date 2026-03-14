Feature: US_5275417_Get Details Page development for PII Tab

  @pass @run
  Scenario Outline: To verify that user is able to view PII  under quicklinks section
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
    And Verify Quick Links Section in DashBoard Page with Links "PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is redirected to PII page when user click on PII tab under quicklinks section
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Below Menus "<Menus>" Should be displayed to the user on LHS of "PII" Details page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Menus                                 |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Identification PII, Communication PII |

  @pass @run
  Scenario Outline: To verify that user is able to view Identification PII on LHS
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Below Menus "Identification PII" Should be displayed to the user on LHS of "PII" Details page


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to click on identification PII
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Identification PII" in "PII" Details Page
    Then User should be able to view below details under Identification PII "Identification PII"


    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view ID field under customer ID columns
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Identification PII" in "PII" Details Page
    Then User should be able to view "Customer Id" under "Identification PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view panNo field under PAN number columns
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Identification PII" in "PII" Details Page
    Then User should be able to view "PAN Number" under "Identification PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view dob field under DOB columns
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Identification PII" in "PII" Details Page
    Then User should be able to view "DOB" under "Identification PII"
    Then User should be able to view DOB in format "dd-mm-yyyy" for "Identification PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view dob in relevant formant
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Identification PII" in "PII" Details Page
    Then User should be able to view DOB in format "dd-mm-yyyy" for "Identification PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view ckycnumber field under CKYC Number columns
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Identification PII" in "PII" Details Page
    Then User should be able to view "CKYC Number" under "Identification PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data @run
  Scenario Outline: To verify that “No data Available “ message is display when no data Available - Identification PII
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Identification PII" in "PII" Details Page
    Then "No record found" message should be displayed for "Identification PII" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @pass @run
  Scenario Outline: To verify that user is able to view Communication PII on LHS
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Below Menus "Communication PII" Should be displayed to the user on LHS of "PII" Details page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail @run ##Cust ID header is not present
  Scenario Outline: To verify that user is able to  click on Communication PII
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Communication PII" in "PII" Details Page
    Then User should be able to view below details under Communication PII "Communication PII"
#  1.Customer ID

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @fail @run
  Scenario Outline: To verify that user is able to view id values under customer id fields
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Communication PII" in "PII" Details Page
    Then User should be able to view "Customer Id" under "Communication PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view mobile no fields  under mobile number column
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Communication PII" in "PII" Details Page
    Then User should be able to view "Mobile Number" under "Communication PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Phone 1 fields  under Phone 1 column
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Communication PII" in "PII" Details Page
    Then User should be able to view "Phone 1" under "Communication PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view Phone 2 fields  under Phone 2 column
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Communication PII" in "PII" Details Page
    Then User should be able to view "Phone 2" under "Communication PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that user is able to view email fields  under Email  column
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Communication PII" in "PII" Details Page
    Then User should be able to view "Email" under "Communication PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that user is able to view Address fields under Address column
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Communication PII" in "PII" Details Page
    Then User should be able to view "Address" under "Communication PII"

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @OOS
  Scenario Outline:To verify that user is able to view fields in the given sequence only
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on Customer by search dropdown
    And Click on Customer ID Number
    And Enter the Customer ID  Number
    And  Click on proceed CTA
    And Verify the Address

    Then User should be  able to view fields in the below sequence only addressLine1, addressLine2, cityName, stateName, pinCode
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data @run
  Scenario Outline:To verify that “No data Available “ message is display when no data Available - Communication PII
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
    And Clicks on "PII" Option under QUICK LINKS section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/pii" Page
    And Clicks on LHS Option "Communication PII" in "PII" Details Page
    Then "No record found" message should be displayed for "Communication PII" when no data available

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @negative @fail
  Scenario Outline:To verify that user is able to view ‘No Masking’on any fields
    Given User is logged in "<Domain>" "<Username>" for "<Password>"
    When Click on Customer by search dropdown
    And Click on Customer ID Number
    And Enter the Customer ID  Number
    And  Click on proceed CTA
    And Verify the Masking
    Then User should be able to view ‘No Masking’on any of the columns mentioned below fields - CustomerID/Mobile/Phone -1/Phone -2/Email address/DOB/PAN/CKYC Number.
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |



