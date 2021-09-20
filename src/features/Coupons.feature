@cencosud
Feature: Coupons Routes
  In order manage directory
  As a QA Automation
  I want to make sure CRUD operations through REST API works fine

  Scenario Outline: use coupons
    Given A request <request>
    When I send POST request to Metro /coupons-dev/useCoupons
    Then I get response code 200

    Examples:
      | request  |
      |{ "documentType" : 1, "document" : "42409049", "coupons" : [ { "campaignCode" : "545454" }, { "campaignCode" : "169019" } ] } |

  Scenario Outline: Obtain Coupons from DNI
    Given A request <body>
    When I send GET request to Metro /coupons?dni=42409049
    Then I get response code 200

    Examples: 
      | body |
      |  {}  |
