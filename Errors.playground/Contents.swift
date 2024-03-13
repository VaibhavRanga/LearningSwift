
enum PasswordError: Error {
    case short
    case obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

do {
    let result = try checkPassword("12345")
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Password is too short")
} catch PasswordError.obvious {
    print("Password is obvious")
} catch {
    print("There was an error")
}







// MARK: Square root with error handling


enum SqrtError: Error {
    case outOfBounds
    case noRoot
}

func calculateSquareRoot(of number: Int) throws -> Int {
    if number < 1 || number > 10000 {
        throw SqrtError.outOfBounds
    }
    
    for i in 1...number {
        if (i * i) == number {
            return i
        }
    }
    
    throw SqrtError.noRoot
}

do {
    let result = try calculateSquareRoot(of: 625)
    print("The square root is : \(result)")
} catch SqrtError.outOfBounds {
    print("Number out of bounds")
} catch SqrtError.noRoot {
    print("Square root doesn't exist")
} catch {
    print("There was an error")
}
