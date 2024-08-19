Feature: test to user resource from reqres.in

  Background:
    * url 'https://reqres.in/api/'

  Scenario: Get a single user
    * def resource = 'users'
    * def userId = 2
    Given path resource, userId
    When method Get
    Then status 200
    * print response