

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let orderNo: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Nick", isPremium: true, orderNo: 4),
    DatabaseUser(name: "Joe", isPremium: false, orderNo: 100),
    DatabaseUser(name: "Samantha", isPremium: false, orderNo: 1),
    DatabaseUser(name: "May", isPremium: true, orderNo: 23),
    DatabaseUser(name: "Chris", isPremium: false, orderNo: 35)
]



//Filter

var premiumUsers1: [DatabaseUser] = allUsers.filter { user in
    return user.isPremium
}

var premiumUsers2: [DatabaseUser] = allUsers.filter{ $0.isPremium }   //short-hand notation

print(premiumUsers1)
print(premiumUsers2)

print("----------------------------------------------------")




//Sort

var usersSortedByOrder1: [DatabaseUser] = allUsers.sorted { user1, user2 in
    return user1.orderNo <= user2.orderNo
}

var usersSortedByOrder2: [DatabaseUser] = allUsers.sorted { $0.orderNo <= $1.orderNo }      //short-hand notation

print(usersSortedByOrder1)
print(usersSortedByOrder2)




print("----------------------------------------------------")


//Map: extract some data of a data type from a collection or convert the data types of an array to some other data type


var userNames1: [String] = allUsers.map { user in
    return user.name
}

var userNames2: [String] = allUsers.map { $0.name}     //short-hand notation

print(userNames1)
print(userNames2)







print("----------------------------------------------------")

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

var filterOddNumbers = luckyNumbers.filter { !$0.isMultiple(of: 2) }

var sortedNumbers = filterOddNumbers.sorted()

var numberToString = sortedNumbers.map { "\($0) is a lucky number" }

for (index, item) in numberToString.enumerated() {
    print(item)
}
