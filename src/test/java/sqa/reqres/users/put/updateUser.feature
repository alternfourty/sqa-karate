Feature: test to user resource from reqres.in

  Background:
    * url 'https://reqres.in/api/'
    * request read('classpath:sqa/reqres/users/put/request/updateUser_request.json')

  Scenario Outline: Update an user
    * def resource = 'users'
    Given path resource, userId
    When method Put
    Then status 200
    * print response
    Examples:
      | name     | job          |
      | Raychell | Code Analyst |