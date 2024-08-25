Feature: test POST method on gorest API

  Background:
    * url 'https://gorest.co.in/public/v2/'
    * request read('classpath:sqa/gorest/users/post/request/createUser_request.json')
    * header Authorization = 'Bearer b5f5ae63168e01be5ee871ed5ffb9e0757c692287d7f72c336d6e4aeaefe492b'

  Scenario: Create an user
    * def resource = 'users'
    Given path resource
    When method Post
    Then status 201
    * print response