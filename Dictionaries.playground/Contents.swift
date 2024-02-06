//dictionaries are key value pairs where keys must be unique; they are fast with constant time lookup

//create dictionaries -

var nameToAgeDict = [String: Int]()     //empty dictionary
var nameToEmailDict = ["John": "johnemail.email.com", "Steve": "steveemail@gmail.com"]
print("nameToEmailDict: \(nameToEmailDict)")

var devices: [String: String] = [
    "phone": "iPhone 15",
    "laptop": "MacBook pro",
    "desktop": "iMac"
]

devices["phone"]
