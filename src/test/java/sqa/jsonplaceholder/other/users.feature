Feature: test to user resource from jsonplaceholder

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Successfully execute get method
    * def users = 'users'
    * def userId = 1
    * def requestResponse = read('classpath:sqa/jsonplaceholder/users/response/users_response.json')
    Given path users, userId
    When method Get
    Then status 200
    * print response
    And match requestResponse == response