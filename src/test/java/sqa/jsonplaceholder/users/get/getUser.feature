Feature: test GET method on the users resource on jsonplaceholder API

  Background:
    * url 'https://jsonplaceholder.typicode.com/'

  Scenario: Get a single user information
    * def resource = 'users'
#    * def userId = 10
    Given path resource, userId
    When method Get
    Then status 200
    * print response