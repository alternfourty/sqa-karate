Feature: test the users resource from the jsonplaceholder API
  Scenario: execute full CRUD workflow
    * def createUser = call read('classpath:sqa/jsonplaceholder/users/post/createUser.feature')
    * def userId = $createUser.response.id
    * print userId
    * def updateUser = call read('classpath:sqa/jsonplaceholder/users/put/updateUser.feature'){userId: "8"}
    * def getUser = call read('classpath:sqa/jsonplaceholder/users/get/getUser.feature'){userId: "8"}
    * def deleteUser = call read('classpath:sqa/jsonplaceholder/users/delete/deleteUser.feature'){userId: "9"}