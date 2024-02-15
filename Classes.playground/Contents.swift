
class Developer {
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
    
    init() {}
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    
    func printName() {
        if let name = name {
            print(name)
        }
    }
}

var developer1 = Developer(name: "Vaibhav", jobTitle: "iOS Engineer", yearsExp: 5)

let developer2 = Developer()

developer2.name = "Joe"
developer2.jobTitle = "Coder"

developer2.printName()


//inheritance

class iOSDeveloper: Developer {
    var favoriteFramework: String?
    
    func printFavoriteFramework() {
        if let favoriteFramework = favoriteFramework {
            print("Favorite framework is: \(favoriteFramework)")
        } else {
            print("There is no favorite framework")
        }
    }
    
    override func printName() {
        guard let name = name else {return}
        guard let jobTitle = jobTitle else {return}
        
        print("\(name) - \(jobTitle)")
    }
}

var iOSDeveloper1 = iOSDeveloper(name: "Sean", jobTitle: "iOSGuy", yearsExp: 3)
var iOSDeveloper2 = iOSDeveloper()

iOSDeveloper1.favoriteFramework = "ARKit"

iOSDeveloper1.printFavoriteFramework()

iOSDeveloper1.printName()

iOSDeveloper2.printName()






//struct vs class: classes are reference type(two guys making changes in a file at the same time), slow and support inheritance
//structs are value type(two guys get different copies and make changes to their copies), fast and don't support inheritance and get memberwise initializer; meaning we don't need to define initializer inside the struct

var developer3 = Developer(name: "Sam", jobTitle: "iOS Dev", yearsExp: 8)
var developer4 = developer3

developer4.name = "John"
developer3.name

struct Developers {
    var name: String
    var jobTitle: String
    var yearsExp: Int
}

var developers1 = Developers(name: "Sean", jobTitle: "ios", yearsExp: 4)

var developers2 = developers1
developers2.name = "May"

developers1.name
