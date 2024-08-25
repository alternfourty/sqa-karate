Feature: test to user resource from reqres.in

  Background:
    * url 'https://gorest.co.in/public/v2/'
    * header Authorization = 'Bearer b5f5ae63168e01be5ee871ed5ffb9e0757c692287d7f72c336d6e4aeaefe492b'

  Scenario: Delete a single user
    * def resource = 'users'
    Given path resource, userId
    When method Delete
    Then status 204
    * print response