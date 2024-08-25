Feature: test the users resource from the gorest API
  Scenario: execute full CRUD workflow
    * def createUser = call read('classpath:sqa/gorest/users/post/createUser.feature')
    * def userId = $createUser.response.id
    * print userId
    * def updateUser = call read('classpath:sqa/gorest/users/put/updateUser.feature'){userId: "#(userId)"}
    * def getUser = call read('classpath:sqa/gorest/users/get/getUser.feature'){userId: "#(userId)"}
    * def deleteUser = call read('classpath:sqa/gorest/users/delete/deleteUser.feature'){userId: "#(userId)"}