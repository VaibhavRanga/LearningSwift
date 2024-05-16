//Tuples let us group more than one value

var someData: (String, Bool, Int) = ("Hello", false, 456)





func getUserInfo1() -> (String, Bool) {     //here we are returning more than one value
    var name = "Vaibhav"
    var isUserNew = true
    
    return (name, isUserNew)
}

var user1 = getUserInfo1()

//to use the info returned by the function we need to use 0, 1, 2 ... according to the return values
user1.0
user1.1





//We can give names to the return types for better readability

func getUserInfo2() -> (name: String, isUserNew: Bool) {
    var someName = "Vaibhav"
    var isSomeUserNew = true
    
    return (someName, isSomeUserNew)
}

var user2 = getUserInfo2()

print(user2.name)
user2.isUserNew






func getUserInfo3() -> (name: String, isUserNew: Bool) {
    
    var name = "Karuna"
    var isUserNew = true
    return (name, isUserNew)
}

func doSomethingWIthUserInfo(info: (name: String, isUserNew: Bool)) {
    //does something with the data
}

var userInfo: (name: String, isUserNew: Bool) = getUserInfo3()

doSomethingWIthUserInfo(info: userInfo)
