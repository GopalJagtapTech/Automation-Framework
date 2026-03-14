Feature: FF_6286038_SOA summarization_Customer 360 API and UI Changes

  @pass
  Scenario Outline: To verify that user is on landing  page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Verify the User Profile is "Admin"
    And Verify User is able to view below content for Landing Page
    And Verify User is able to view below content for Top Section on Landing Page
    And Verify User is able to view below content for Search Section on Landing Page

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass
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
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass
  Scenario Outline: To verify that user is able to enter number under Customer by search dropdown field
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass
  Scenario Outline: To verify that user is redirected to dashboard page when click on proceed Cta
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass
  Scenario Outline: To verify that user is dashboard page
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass
  Scenario Outline: To verify that Loan insights widget is display only for cashier profile
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And "Insights" Button should be displayed for Cashier Profile

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass
  Scenario Outline: To verify that user is able to view Loan Insights CTA on the top-right corner of the dashboard
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Mobile Number" Option from Search Dropdown
    And Enters "9970790790" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    Then User should be able to view Loan "Insights" CTA on the top-right corner of the dashboard

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass
  Scenario Outline: To verify that user is able to slide-over panel showing customer’s loan summary details when user click on loan insight CTA  on the top-right corner of the dashboard
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "171765428" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Loan "Insights" CTA on the top-right corner of the dashboard
    Then User should be able to slide-over panel showing customer’s loan summary details

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass
  Scenario Outline: To verify that user is able to view loan insights  details under tile
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "171765428" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Loan "Insights" CTA on the top-right corner of the dashboard
    Then User should be able to slide-over panel showing customer’s loan summary details
    Then User should be able to view below loan insights details "<Details>" under tile "P94CPNT10735528"

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        | Details                                                                                                                                                                     |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard | EMI#Next Due Date#Last 5 EMI status#Last Bounce Reason#EMI Overdue#BCC Overdue#LPP Overdue#Other Receivables#Balance/ Total Tenure#ROI#Loan Amount Repaid#Total Outstanding |

  @pass
  Scenario Outline: To verify that When user click on  the SOA, the details of that specific loan is display in the loan insights tile, download the document option is shown
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "171765428" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Clicks on a "SOA" Document in "P94CPNT10735528" Relation Tile
    Then Customer should be able to view below Icons for the "SOA"
    And User should be able to slide-over panel showing customer’s loan summary details
    And The details of that specific loan "P94CPNT10735528" should be displayed in the loan insights tile

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass
  Scenario Outline: To verify that user is able to view dropdown if multiple loans
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "171765428" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Loan "Insights" CTA on the top-right corner of the dashboard
    Then User should be able to slide-over panel showing customer’s loan summary details
    Then User should be able to view dropdown if multiple loans in Loan Insights

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |

  @pass
  Scenario Outline:To verify that user is redirected to dashboard page when click on cross icon under loan insight tile
    Given User is on Customer 360 Login Page
    And  User should select Domain "<Domain>"
    And User enters UserName "<Username>"
    And User enters Password "<Password>"
    And Clicks on LogIn Button
    Then User should be redirected to Landing Page "<Url>"
    And Selects "Customer ID" Option from Search Dropdown
    And Enters "171765428" into Search Input Box
    And Clicks on "PROCEED" Button
    Then User should be redirected to Dashboard Page "<Dashboard>"
    And Click on Loan "Insights" CTA on the top-right corner of the dashboard
    Then User should be able to slide-over panel showing customer’s loan summary details
    And Click on cross icon of Loan Insights panel
    Then User should be redirected to dashboard page and loan insight panel should be closed

    Examples:
      | Domain | Username | Password     | Url                                            | Dashboard                                        |
      | CC     | 11075rg  | Finserv_2025 | https://customer360uat.bajajfinserv.in/landing | https://customer360uat.bajajfinserv.in/dashboard |



