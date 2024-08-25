Feature: test the PUT method on the users resource on gorest API

  Background:
    * url 'https://gorest.co.in/public/v2/'
    * request read('classpath:sqa/gorest/users/put/request/updateUser_request.json')
    * header Authorization = 'Bearer b5f5ae63168e01be5ee871ed5ffb9e0757c692287d7f72c336d6e4aeaefe492b'

  Scenario: Update an user
    * def resource = 'users'
    Given path resource, userId
    When method Put
    Then status 200
    * print response