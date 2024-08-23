Feature: test the PUT method in the users resource on jsonplaceholder API

  Background:
    * url 'https://jsonplaceholder.typicode.com/'
    * request read('classpath:sqa/jsonplaceholder/users/post/request/createUser_request.json')

  Scenario: Create an user
    * def resource = 'users'
    Given path resource
    When method Post
    Then status 201
    * print response