func customAdd(num1: Int, num2: Int, sum: (Int, Int) -> Int) -> Int {
    num1 + num2
}

let result = customAdd(num1: 10, num2: 25) { (num1: Int, num2: Int) in
    num1 + num2
}

let result1 = customAdd(num1: 20, num2: 10) { num1, num2 in
    num1 + num2
}

let result2 = customAdd(num1: 100, num2: 200) {
    $0 + $1
}





func add20(_ number: Int) -> Int {
    number + 20
}

func addition(value: Int, function: (Int) -> Int) -> Int {
    function(value)
}

let additionResult = addition(value: 50, function: add20(_:))







func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser       //The function is being copied to the variable named greetCopy and the greetUser is not being suffixed by opening and closing parentheses as adding the parentheses would mean: execute the function. Also ": () -> Void" can be added after the greetCopy so that we could know that the function takes no parameters and returns void(nothing).
greetCopy()                     //When we want to run the function we add the parentheses






let sayHello = { (name: String) -> String in        //The in keyword tells that the remaining code is the closure body
    "Hi \(name)!"
}

sayHello("Taylor")      //The parameter label can't be used while calling the closure i.e. name: "Taylor" can't be written





func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData         //Here we are specifying that (Int) -> String takes a parameter of type Int and returns a string.
let user = data(1989)
print(user)







let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {     //A custom sort function
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam1 = team.sorted(by: captainFirstSorted)
print(captainFirstTeam1)



let captainFirstTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in     //Here the custom sort function has been passed as a closure
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

print(captainFirstTeam2)


//We can replace the first line of captainFirstTeam2 declaration with the following syntax

//let captainFirstTeam2 = team.sorted { name1, name2 in

//Even if we write let captainFirstTeam2 = team.sorted { we can use $0 and $1 to refer to the two values




let captainFirstTeam3 = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam4 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}






//Trailing closure syntax

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation…")
    animations()
}

animate(duration: 3, animations: {
    print("Fade out the image")
})

animate(duration: 3) {
    print("Fade out the image")
}








//Functions as parameters

func numberGenerator() -> Int {
    Int.random(in: 0...100)
}

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

print(makeArray(size: 10, using: numberGenerator))








//Multiple functions as parameters

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {                           //Trailing closures
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
