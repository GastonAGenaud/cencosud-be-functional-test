@cencosud
Feature: SalesChannel Routes
  In order manage directory
  As a QA Automation
  I want to make sure CRUD operations through REST API works fine

  Scenario Outline: Check the status of service
    Given A request <body>
    When I send GET request to Wong /salesChannel/health
    Then I get response code 200

    Examples:
      | body |
      | {}   |

  Scenario Outline: Obtain all salesChannels 
    Given A request <body>
    When I send GET request to Wong /salesChannel/sc
    Then I get response code 200
    Examples:
      | body |
      | {}   | 

  Scenario Outline: Obtain  all stores
    Given A request <body>
    When I send GET request to Wong /salesChannel/stores
    Then I get response code 200
    Examples:
      | body |
      | {}   | 

  Scenario Outline: SalesChannel by Department 
    Given A request <body>
    When I send GET request to Wong /salesChannel/scByDepartment?department=Lima
    Then I get response code 200
    Examples:
      | body |
      | {}   | 

  Scenario Outline: Obtain store by id 
    Given A request <body>
    When I send GET request to Wong /salesChannel/storeById?id=T-02
    Then I get response code 200
    Examples:
      | body |
      | {}   | 


  Scenario Outline: Obtain guest SalesChannel
    Given A request <body>
    When I send GET request to Wong /salesChannel/guestSalesChannel
    Then I get response code 200
    Examples:
      | body |
      | {}   | 

  Scenario Outline: Obtain  all storesRT
    Given A request <body>
    When I send GET request to Wong /salesChannel/storesRT
    Then I get response code 200
    Examples:
      | body |
      | {}   | 


  Scenario Outline: Obtain All Sales Channel ST 
    Given A request <body>
    When I send GET request to Wong /salesChannel/saleschannelsST
    Then I get response code 200
    Examples:
      | body |
      | {}   | 

  Scenario Outline: Obtain Nearest Store 
    Given A request <body>
    When I send GET request to Wong /salesChannel/nearestStore?latitudeGPS=-12.1023885&longitudeGPS=-77.0297756
    Then I get response code 200
    Examples:
      | body |
      | {}   | 

