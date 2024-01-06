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
