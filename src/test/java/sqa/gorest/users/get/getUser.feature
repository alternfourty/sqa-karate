Feature: test GET method on the users resource on gorest API

  Background:
    * url 'https://gorest.co.in/public/v2/'
    * header Authorization = 'Bearer b5f5ae63168e01be5ee871ed5ffb9e0757c692287d7f72c336d6e4aeaefe492b'

  Scenario: Get a single user information
    * def resource = 'users'
    Given path resource, userId
    When method Get
    Then status 200
    * print response