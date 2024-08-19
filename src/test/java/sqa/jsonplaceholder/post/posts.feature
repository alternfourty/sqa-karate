Feature: test to post resource from jsonplaceholder

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Successfully execute get method
    * def posts = 'posts'
    * def postNumber = 1
    * def requestResponse = read('classpath:sqa/jsonplaceholder/post/response/informacion_publicacion.json')
    Given path posts, postNumber
    When method Get
    Then status 200
    * print response
    And match requestResponse == response