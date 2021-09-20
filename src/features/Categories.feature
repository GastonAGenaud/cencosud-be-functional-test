@cencosud
Feature: Categories Routes
  In order manage directory
  As a QA Automation
  I want to make sure CRUD operations through REST API works fine

  Scenario Outline: check health of service 
    Given A request <body>
    When I send GET request to Wong /categories/health
    Then I get response code 200

  Examples:
      | body | 
      | {}   |

  Scenario Outline: Obtain alls Categories of METRO
    Given A request <body>
    When I send GET request to Metro /categories/all
    Then I get response code 200

  Examples:
      | body | 
      | {}   |

  Scenario Outline: Obtain alls Categories of Wong
    Given A request <body>
    When I send GET request to Wong /categories/all
    Then I get response code 200

  Examples:
      | body | 
      | {}   |


  Scenario Outline: Obtain alls Categories from sales Channel
    Given A request <body>
    When I send GET request to Wong /categories/all?salesChannel=4
    Then I get response code 200

  Examples:
      | body | 
      | {}   |

  Scenario Outline: Obtain Categories by Filter whith "frutas y verduras"
    Given A request <body>
    When I send GET request to Wong /categories/filterFields?filter=/frutas-y-verduras
    Then I get response code 200

  Examples:
      | body | 
      | {}   |

  Scenario Outline: Obtain Categories by Type
    Given A request <body>
    When I send GET request to Wong /categories/allbyType?food=false
    Then I get response code 200

  Examples:
      | body | 
      | {}   |

  Scenario Outline: Obtain alls brands From categories 
    Given A request <body>
    When I send GET request to Wong /categories/allBrandsFromCategories?filter=/carnes-y-aves/carnes/bifes-y-lomo-fino
    Then I get response code 200

  Examples:
      | body | 
      | {}   |


  Scenario Outline: Find categories ids
    Given A request <body>
    When I send GET request to Wong /categories/findCategoriesIds?filter=/carnes
    Then I get response code 200

  Examples:
      | body | 
      | {}   |


  Scenario Outline: Obtain alls brands from categories
    Given A request <body>
    When I send GET request to Icons Categories library /files/2018-02/Wong_menu_iconos-21.png
    Then I get response code 200
 
  Examples:
      | body | 
      | {}   |

