@cencosud
Feature: Categories Routes
  In order manage directory
  As a QA Automation
  I want to make sure CRUD operations through REST API works fine

  Scenario Outline: check health of service 
    Given A request <body>
    When I send GET request to Wong /orders/health
    Then I get response code 200

  Examples:
      | body | 
      | {}   |

  Scenario Outline: Obtain orders by client
    Given A request <body>
    When I send GET request to Wong /orders/getOrderList?searchText=eucupones@emailna.co
    Then I get response code 200

  Examples:
      | body | 
      | {}   |

  Scenario Outline: Obtain orders by id
    Given A request <body>
    When I send GET request to Wong /orders/getSubOrderDetail?orderIdSequence=v534240wofq
    Then I get response code 200

  Examples:
      | body | 
      | {}   |


  Scenario Outline: Obtain products list by order id 
    Given A request <body>
    When I send GET request to Wong /orders/getProductList?orderId=v1692773wofp-01
    Then I get response code 200

  Examples:
      | body | 
      | {}   |

