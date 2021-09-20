@cencosud
Feature: Address Routes
  In order manage directory
  As a QA Automation
  I want to make sure CRUD operations through REST API works fine

  Scenario Outline: Save default address
    Given A request <request>
    When I send PUT request to Wong /users/saveDefaultAddress
    Then I get response code 200

    Examples:
      | request                                                                                                                                    |
      | { "city": "LIMA", "complement": "", "country": "PER", "latitude": "-12.043365", "longitude": "-77.043136", "neighborhood": "LIMA", "number": "456", "state": "LIMA", "postalcode": "150101", "street": "Jirón Perú", "updateSalesChannel": true, "userId": "c1dd8639-7f99-43d4-a9e3-2646bb32d92d" } |


  Scenario Outline: Obtain alls Address
    Given A request <body>
    When I send GET request to Metro /address/getAllAddress?email=arellano0217@gmail.com
    Then I get response code 200

    Examples: 
      | body |
      |  {}  |
