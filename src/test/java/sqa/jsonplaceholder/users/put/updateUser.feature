Feature: test the PUT method in the users resource on jsonplaceholder API

  Background:
    * url 'https://jsonplaceholder.typicode.com/'
    * request read('classpath:sqa/jsonplaceholder/users/put/request/updateUser_request.json')

  Scenario: Update an user
    * def resource = 'users'
#    * def userId = 10
    Given path resource, userId
    When method Put
    Then status 200
    * print response