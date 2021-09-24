@cencosud
Feature: CMS Routes
  In order manage directory
  As a QA Automation
  I want to make sure CRUD operations through REST API works fine

  Scenario Outline: Obtain the HTML of CMS from Wong
    Given A account
    When I send GET request to Wong /cms/html
    Then I get response code 200 

  Scenario Outline: Obtain the carrusel from Wong 
    Given A account
    When I send GET request to Wong /cms/html
    Then I get response code 200

  Scenario Outline: Obtain banner categories from Wong
    Given A account
    When I send GET request to Wong /cms/bannercategorias
    Then I get response code 200

  Scenario Outline: Obtain all categories from CMS
    Given A account
    When I send GET request to Wong /cms/categoria?salesChannel=23
    Then I get response code 200

  Scenario Outline: Obtain cards from CMS 
    Given A account
    When I send GET request to Wong /cms/tarjetas
    Then I get response code 200 
