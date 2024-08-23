Feature: testing DELETE method in user resource on jsonplaceholder

  Background:
    * url 'https://jsonplaceholder.typicode.com/'

  Scenario: Delete a single user
    * def resource = 'users'
#    * def userId = 10
    Given path resource, userId
    When method Delete
    Then status 200
    * print response