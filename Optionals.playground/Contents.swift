var username = "batman"
var bio: String?

func getUserInfo() {
    print("Username: \(username)")
    print("Bio: \(bio)")            //we can use ! after bio variable to force unwrap but if it is nil program will crash
    
    if let unwrappedBio = bio {
        print("Entered bio is: \(unwrappedBio)")        //unwrapping the optional
    }
    
    if bio != nil {
        print("This is the entered bio: \(bio!)")       //another way to unwrap the optional
    }
}

getUserInfo()

print("---------------------------------")

bio = "Dark Knight"

getUserInfo()

print("---------------------------------")


//MARK: Default value

var firstName = "Vaibhav"
var middleName: String?
var lastName = "Ranga"

func getFullName() {
    
    var unwrappedMiddleName = middleName ?? ""      //give a default value so that it could unwrap
    print("\(firstName) \(unwrappedMiddleName) \(lastName)")
    
}

getFullName()

print("---------------------------------")



//MARK: Guard statement

var email = "test@gmail.com"
var phoneNumber: String?

func sendConfirmation() {
    guard let phone = phoneNumber else {
        print("Sent confirmation text to \(email)")
        return
    }
    
    print("Sent confirmation text to phone number")
    
    
    //if let can also be used instead of guard
    
    if let phone = phoneNumber {
        print("Sent on phone")
    } else {
        print("Sent on email")
    }
}

//phoneNumber = "33334444"

sendConfirmation()

print("------------------------------------------------")




let name: String? = nil

var unwrappedName = ""

if name != nil {
    unwrappedName = name!
}

print(unwrappedName)







print("------------------------------------------------")








var ages: [Int] = [25, 82, 14, 71, 44]
ages.sort()

//if let
if let oldestAge = ages.last {
    print("The oldest age is \(oldestAge)")
} else {
    print("There is no oldest age.")
}

//nil coalescing
let oldestAge = ages.last ?? 999

//guard statement
func getOldestAge() {
    guard let oldestAge1 = ages.last else { return }
    
    print("\(oldestAge1) is the oldest age")
}

getOldestAge()

//force unwrap
let oldestAge2 = ages.last!

print(oldestAge2)



print("------------------------------------------------")

//optionals chaining

func getUsername() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    let username = getUsername()    //username is an optional
    let count = username?.count     //count is also an optional and the ? after username means that count will be nil if username is nil
                                    //if ! is used then it means the optional is being unwraped explicitly in an unsafe manner
    let title = getTitle()
    let countOfTitle = title.count
    
    let isFirstCharacterLowercased = username?.first?.isLowercase ?? false
}
