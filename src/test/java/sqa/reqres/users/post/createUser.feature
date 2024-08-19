Feature: test to user resource from reqres.in

  Background:
    * url 'https://reqres.in/api/'
    * request read('classpath:sqa/reqres/users/post/request/createUser_request.json')

  Scenario Outline: Create an user
    * def resource = 'users'
    Given path resource
    When method Post
    Then status 201
    * print response
    Examples:
      | name | job               |
      | Runa | Council President |