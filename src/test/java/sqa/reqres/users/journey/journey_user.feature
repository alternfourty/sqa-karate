Feature: test the user resource from reqres.in
  Scenario: execute full CRUD workflow
    * def createUser = call read('classpath:sqa/reqres/users/post/createUser.feature')
    * def createUserResponse = $createUser.response
    * def userId = $createUser.response.id
    * print userId
    * def jsonRequest = {name:"Friedrich",job:"Corn Lead Researcher"}
    * def updateUser = call read('classpath:sqa/reqres/users/put/updateUser.feature')userId,jsonRequest
    * def getUser = call read('classpath:sqa/reqres/users/get/getUsers.feature')userId
    * def