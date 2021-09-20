@cencosud
Feature: Recommendations Routes
  In order manage directory
  As a QA Automation
  I want to make sure CRUD operations through REST API works fine

  Scenario Outline: Obtain Recommendations for non food
    Given A request <body>
    When I send GET request to Wong /recommendations/foodRecommendations?email=eucaris.guerrero.19@gmail.com
    Then I get response code 200

    Examples:
      | body |
      | {}   |

  Scenario Outline: Obtain Recommendations for Food
    Given A request <body>
    When I send GET request to Wong /recommendations/foodRecommendations?email=eucaris.guerrero.19@gmail.com
    Then I get response code 200
    Examples:
      | body |
      | {}   | 

  Scenario Outline: Obtain Recommendations feature products
    Given A request <body>
    When I send GET request to Wong /recommendations/nonFoodFeature?email=kathyo_ba@hotmail.com
    Then I get response code 200
    Examples:
      | body |
      | {}   | 
