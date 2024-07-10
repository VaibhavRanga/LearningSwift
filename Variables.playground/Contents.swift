let number: Int = 10
let string: String = "Vaibhav"
let value: Bool = true
let doubleValue: Double = 12.45
let floatValue: Float = 34.42
let charValue: Character = "a"


let name = "Vaibhav"    //immutable
var myName = "Dinesh"   //mutable

var names = ["Dinesh", "Karuna"]     // array

let names1 = ["Dinesh", "Karuna"]

//names1.append("Vaibhav")      //gives an error as names1 was created by let






print("--------------------------")

//computed properties
struct Person {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person(age: 5)
print(fan.ageInDogYears)





print("--------------------------")

//property observers

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")
