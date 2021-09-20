@cencosud
Feature: Search Routes
  In order manage directory
  As a QA Automation
  I want to make sure CRUD operations through REST API works fine

  Scenario Outline: Check the health of service
    Given A request <body>
    When I send GET request to Wong /health 
    Then I get response code 200

    Examples:
      | body |
      | {}   |

  Scenario Outline: Obtain Top search by quantity 
    Given A request <body>
    When I send GET request to Wong /topSearchs?quantity=8
    Then I get response code 200
    Examples:
      | body |
      | {}   | 
