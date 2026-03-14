Feature: FF_5328360_Get Details Page Development for GST Details Tab (More Widgets)

  @pass @run
  Scenario Outline: To verify that Admin Profile user is able to view given option with icon under widgets section on Dashboard page
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that  user is redirected to Get Invoice Detail when clicks on GST Tab
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that User is able to view given details under Get Invoice Detail page
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    Then Below details should be displayed in the GST Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that User is able to view all LAN’s against the customer ID in drop down
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    Then User will be able to view all LAN's against the customer ID in drop down in GST Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that  User is able to select Agreement Number from drop down
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "405ECFKB367135" from drop down in GST Details Page
    Then User should be able to select Agreement Number "405ECFKB367135" from drop down in GST Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that User is able to view all the Invoice number against the selected LAN’s
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "405ECFKB367135" from drop down in GST Details Page
    Then User should be able to view all the Invoice number against the selected LAN's in GST Details Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that  User is able to select Invoice Number from drop down
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "405ECFKB367135" from drop down in GST Details Page
    And Select Invoice Number "27CFIF0494878302" from drop down in GST Details Page
    Then User Should be able to select Invoice Number "27CFIF0494878302" from drop down in GST Details Page
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that after selecting an invoice number, system automatically highlighting corresponding report type
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "405ECFKB367135" from drop down in GST Details Page
    And Select Invoice Number "27CFIF0494878302" from drop down in GST Details Page
    Then User Should be able to view automatically highlighted corresponding "Tax Invoice" report type

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that Tax invoice Tab will be highlighted if the invoice number contains CFIP.
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "405ECFKB367135" from drop down in GST Details Page
    And Select Invoice Number "27CFIF0494878302" from drop down in GST Details Page
    And Clicks on "Tax Invoice" CTA
    Then Verify "Download PDF" CTA is displayed

#    And Select Invoice Number contains CFIP
#    Then  ax invoice Tab should be highlighted if the invoice number contains CFIP.
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that given fields will appear in Tabular format report on same page for Tax invoice
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "405ECFKB367135" from drop down in GST Details Page
    And Select Invoice Number "27CFIF0494878302" from drop down in GST Details Page
    And Clicks on "Tax Invoice" CTA
    Then Verify "Download PDF" CTA is displayed
    And Clicks on "Download PDF" CTA
    Then Below Fields "<Fields>" should be displayed for Tax Invoice

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Fields                                                                                         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | PARTICULAR, INVOICE NUMBER, INVOICE DATE, TAXABLE AMOUNT, CGST, UTGST / SGST, IGST, KFC, TOTAL |

  @pass @run
  Scenario Outline:To verify that Credit note Tab will be highlighted if the invoice number contains CFCP.
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "405VECLJ100665" from drop down in GST Details Page
    And Select Invoice Number "27CFCF0606308439" from drop down in GST Details Page
    Then User Should be able to view automatically highlighted corresponding "Credit Note" report type

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline:To verify that given fields will appear in Tabular format report on same page for Credit Note
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "405VECLJ100665" from drop down in GST Details Page
    And Select Invoice Number "27CFCF0606308439" from drop down in GST Details Page
    And Clicks on "Credit Note" CTA
    Then Verify "Download PDF" CTA is displayed
    And Clicks on "Download PDF" CTA
    Then Below Fields "<Fields>" should be displayed for credit note

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Fields                                                           |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | Particular, Taxable Amount, CGST, UTGST / SGST, IGST, KFC, TOTAL |

  @pass @run
  Scenario Outline:To verify that report will load directly on the same page when any report is selected
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "P402PPR2719322" from drop down in GST Details Page
    And Select Invoice Number "27CFIP0344244928" from drop down in GST Details Page
    And Clicks on "Tax Invoice" CTA
    Then Verify "Download PDF" CTA is displayed
    And Clicks on "Download PDF" CTA
    And Delete the Recent Downloaded File
    Then User should be on same "https://customer360uat.bajajfinserv.in/gst" Page
    Then Below Fields "<Fields>" should be displayed for Tax Invoice

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        | Fields                                                                                         |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | PARTICULAR, INVOICE NUMBER, INVOICE DATE, TAXABLE AMOUNT, CGST, UTGST / SGST, IGST, KFC, TOTAL |

  @pass @run
  Scenario Outline:To verify that Generate PDF button will be available on the report page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "P402PPR2719322" from drop down in GST Details Page
    And Select Invoice Number "27CFIP0344244928" from drop down in GST Details Page
    And Clicks on "Tax Invoice" CTA
    Then Verify "Download PDF" CTA is displayed

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that report is downloaded in PDF format when clicks on generate PDF cta - CFIP
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "P402PPR2719322" from drop down in GST Details Page
    And Select Invoice Number "27CFIP0344244928" from drop down in GST Details Page
    And Clicks on "Tax Invoice" CTA
    Then Verify "Download PDF" CTA is displayed
    And Clicks on "Download PDF" CTA
    Then "tax-invoice" Report should be download in PDF format in GST Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that report is downloaded in PDF format when clicks on generate PDF cta - CFCF
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "405VECLJ100665" from drop down in GST Details Page
    And Select Invoice Number "27CFCF0606308439" from drop down in GST Details Page
    And Clicks on "Credit Note" CTA
    Then Verify "Download PDF" CTA is displayed
    And Clicks on "Download PDF" CTA
    Then "credit-note" Report should be download in PDF format in GST Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass @run
  Scenario Outline: To verify that User redirected to the previous screen or GST tab without reloading the dashboard when clicks on back button
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9049988851" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number "P402PPR2719322" from drop down in GST Details Page
    And Select Invoice Number "27CFIP0344244928" from drop down in GST Details Page
    And Clicks on "Tax Invoice" CTA
    Then Verify "Download PDF" CTA is displayed
    And Clicks on Back CTA
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Verify "Widgets" Section is displayed in DashBoard Page

    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |


  @data
  Scenario Outline:To verify “No Data Available” text will display if User doesn’t have GST LAN’s against customer ID
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number from drop down
    And Select Invoice Number contains CFIP
    And Click on back CTA
    Then User should be able to view “No Data Available” error message
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline: To verify “No Data Available” text will display if User doesn’t have Tax Invoice against Invoice number
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number from drop down
    And Select Invoice Number contains CFIP
    Then User should be able to view “No Data Available” error message
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @data
  Scenario Outline:To verify “No Data Available” text will display if User doesn’t have Credit note against Invoice number
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
    And Verify "Widgets" Section is displayed in DashBoard Page
    And Verify User is able to view the Options "GST" under Widgets Section
    And Clicks on "GST" Option under Widgets section
    Then User should be redirected to "https://customer360uat.bajajfinserv.in/gst" Page
    And Select Agreement Number from drop down
    And Select Invoice Number contains CFIP
    Then User should be able to view “No Data Available” error message
    Examples:
      | Domain  | Username | Password | Url                                            | Dashboard                                        |
      | Partner | 202432943  | Finserv@12345  | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

