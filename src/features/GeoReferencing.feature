@cencosud
Feature: GeoReferencing Routes
  In order manage directory
  As a QA Automation
  I want to make sure CRUD operations through REST API works fine

  Scenario Outline: Check the status of service
    Given A request <body>
    When I send GET request to Wong /georeferencing/health
    Then I get response code 200

    Examples:
      | body |
      | {}   |

  Scenario Outline: Update the Polygons
    Given A request <body>
    When I send GET request to Wong /georeferencing/updatePolygons
    Then I get response code 200
    Examples:
      | body |
      | {}   | 

  Scenario Outline: Obtain  all departaments
    Given A request <body>
    When I send GET request to Wong /georeferencing/findAllDepartments
    Then I get response code 200
    Examples:
      | body |
      | {}   | 

  Scenario Outline: Calculate the Store 
    Given A request <body>
    When I send POST request to Wong /georeferencing/calculateStore
    Then I get response code 200
    Examples:
      | body |
      | { "postalCode": "150140", "latitude": "-12.1312961", "longitude": "-76.98245709999999" }  | 

  Scenario Outline: GeoReferencing address by ubication 
    Given A request <body>
    When I send POST request to Wong /georeferencing/georeferencingAddressByUbigeo
    Then I get response code 200
    Examples:
      | body |
      | { "userId": "b130b91a-65f7-4526-80e3-83c0c54463f9", "department": "LIMA", "province": "LIMA", "district": "LIMA" }| 

  Scenario Outline: GeoReferencing address 
    Given A request <body>
    When I send POST request to Wong /georeferencing/georeferencingAddress
    Then I get response code 200
    Examples:
      | body |
      | { "userId": "b130b91a-65f7-4526-80e3-83c0c54463f9", "latitude": -77.0797331, "longitude": -12.0775333 } | 

