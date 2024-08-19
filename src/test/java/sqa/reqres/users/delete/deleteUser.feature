Feature: test to user resource from reqres.in

  Background:
    * url 'https://reqres.in/api/'

  Scenario: Delete a single user
    * def resource = 'users'
    * def userId = 514
    Given path resource, userId
    When method Delete
    Then status 204
    * print response