protocol Shape {
    var shapeName: String { get }
    var numberOfSides: Int { get }
    
    func getArea() -> Int
}

struct Square: Shape {
    let shapeName: String
    let numberOfSides: Int
    let sideLength: Int
    
    func getArea() -> Int {
        return sideLength * sideLength
    }
}

struct Rectangle: Shape {
    let shapeName: String
    let numberOfSides: Int
    let width: Int
    let height: Int
    
    func getArea() -> Int {
        return width * height
    }
}

let rectangle = Rectangle(shapeName: "Rectangle", numberOfSides: 4, width: 10, height: 5)
let square = Square(shapeName: "Square", numberOfSides: 4, sideLength: 8)

var shapes = [Shape]()

shapes.append(square)
shapes.append(rectangle)

for shape in shapes {
    print("Name of shape: \(shape.shapeName) and its area is: \(shape.getArea())")
    
    if let shape = shape as? Rectangle {                                                //casting rectangle as shape
        print("Rectangle width: \(shape.width) and height: \(shape.height)")
    } else if let shape = shape as? Square {
        print("Square side length: \(shape.sideLength)")
    }
}







//MARK: Protocols with enums

protocol Description {
    var description: String { get }
}

enum AccountType: Description {
    case basic
    case pro
    case proPlus
    
    var description: String {
        switch self {
        case .basic:
            return "Basic account"
        case .pro:
            return "Pro account"
        case .proPlus:
            return "Pro plus account"
        }
    }
}

struct User {
    let name: String
    let age: Int
    let accountType: AccountType
}

let user1 = User(name: "John Doe", age: 30, accountType: .basic)
let user2 = User(name: "Kate Smith", age: 28, accountType: .proPlus)

print(user1.accountType.description)







//MARK: Instagram example

protocol FeedItemProtocol {
    var caption: String { get }
}

struct Post: FeedItemProtocol {
    var caption: String
}

struct Reel: FeedItemProtocol {
    var caption: String
}
