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


struct PostModel {
    let id: String
    let title: String
    let likes: Int
}

var postDict: [String: PostModel] = [
    "abc123": PostModel(id: "abc123", title: "Post 1", likes: 34),
    "bcd345": PostModel(id: "bcd345", title: "Post 3", likes: 5),
    "xyz112": PostModel(id: "xyz112", title: "Post 334", likes: 67)
]

//add an element
postDict["xyz999"] = PostModel(id: "xyz999", title: "Post 16", likes: 2)

//access item: accessed items are optionals
let item = postDict["bcd345"]

print(item)
