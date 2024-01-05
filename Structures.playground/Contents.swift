struct Person {
    let name: String
    let age: Int
}

let person = Person(name: "Vaibhav", age: 22)

print(person.age)





struct CommodoreComputer {
    let name: String
    let manufacturer: String
    
    init(name: String) {
        self.name = name
        self.manufacturer = "Commodore"     //here the manufacturer value is hardcoded
    }
}

let computer = CommodoreComputer(name: "SomeComputer")

print("\(computer.name) was designed by \(computer.manufacturer)")







struct AlsoCommodoreComputer {
    let name: String
    let manufacturer = "SomeManufacturer"       //same result is achieved by this line as by the init method
}

let alsoComputer = AlsoCommodoreComputer(name: "ThisComputer")

print(alsoComputer.manufacturer)






struct Person2 {
    let firstName: String
    let lastName: String
//    let fullName: String
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//        
//        self.fullName = ("\(firstName) \(lastName)")
//    }
    
    //the same fullName can be obtained by the following procedure
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let person2 = Person2(firstName: "Vaibhav", lastName: "Ranga")

print(person2.fullName)






struct Car {
    var currentSpeed: Int               //structs are immutable by default but the values of their properties can be changed by using var and mutating
    
    mutating func drive(speed: Int) {       //marked as mutating
        currentSpeed = speed
    }
}
	
let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 30)       //this gives an error because immutableCar is defined as a let value

var mutableCar = Car(currentSpeed: 10)
mutableCar.drive(speed: 30)
print(mutableCar.currentSpeed)      //this is because of the var value type

var copy = mutableCar               //assigning a struct instance to any variable creates a separate instance
mutableCar.currentSpeed
mutableCar.drive(speed: 100)
print(mutableCar.currentSpeed)
print(copy.currentSpeed)
copy.drive(speed: 500)
print(copy.currentSpeed)


//structs cannot inherit each other




//custom copy

struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    
    func copy(currentSpeed: Int) -> Bike {
        Bike(
            manufacturer: self.manufacturer,
            currentSpeed: currentSpeed
        )
    }
}

let bike1 = Bike(manufacturer: "Suzuki", currentSpeed: 20)

let bike2 = bike1.copy(currentSpeed: 50)
