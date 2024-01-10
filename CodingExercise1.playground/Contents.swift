func oddOrEven(lowerBound: Int, upperBound: Int, printEven: Bool) {
    for i in lowerBound ... upperBound {
        if printEven {
            if (i % 2 == 0) {
                print(i)
            }
        } else if i % 2 != 0 {
            print(i)
        }
    }
}
oddOrEven(lowerBound: 11, upperBound: 20, printEven: true)

print("------------------------")

oddOrEven(lowerBound: 11, upperBound: 20, printEven: false)

print("------------------------")

var arrayOfNumbers = [34, 53, 89, 94, 75]
var sum = 0
var max = arrayOfNumbers[0]
var min = arrayOfNumbers[0]
for i in 0 ..< arrayOfNumbers.count {
    sum += arrayOfNumbers[i]
    if arrayOfNumbers[i] > max {
        max = arrayOfNumbers[i]
    }
    if arrayOfNumbers[i] < min {
        min = arrayOfNumbers[i]
    }
}
print("Sum: \(sum)")
print("Max: \(max) and min: \(min)")

print("------------------------------------------------")

struct Guest {              //sort of data class
    let name: String
    let age: Int
    var isAttending: Bool
}

struct GuestList {
    var guests: [Guest]
    
    func searchGuestByName(guestName: String) {
        for guest in guests {
            if guestName.lowercased() == guest.name.lowercased() {
                print("Guest found in the list.")
                return
            }
        }
        print("Guest not found in the list.")
    }

    func guestsLessThanAge(age: Int) -> [Guest] {
        var result = [Guest]()
        
        for guest in guests {
            if guest.age < age {
                result.append(guest)
            }
        }
        return result
    }

    func updateRSVPStatus(name: String, isAttending: Bool) {
        for var guest in guests {
            if guest.name == name {
                guest.isAttending = isAttending
            }
        }
        print(guests)
    }

    func guestsAttending() -> Int {
        var totalAttending = 0
        for guest in guests {
            if guest.isAttending {
                totalAttending += 1
            }
        }
        return totalAttending
    }
    
    func guestsNotAttending() -> Int {
        var count = 0
        for guest in guests {
            if !guest.isAttending {
                count += 1
            }
        }
        return count
    }
    
    func printReport() {
        print("\(guestsAttending()) guests are attending the party while \(guestsNotAttending()) people are not likely to attend.")
        print("\(guestsLessThanAge(age: 30).count) are not allowed to consume alcohol.")
    }
}

let g1 = Guest(name: "Vaibhav Ranga", age: 32, isAttending: true)
let g2 = Guest(name: "Bruce Wayne", age: 39, isAttending: false)
let g3 = Guest(name: "Karuna", age: 27, isAttending: true)
let g4 = Guest(name: "Tony Stark", age: 42, isAttending: false)
let g5 = Guest(name: "Dinesh Kumar", age: 24, isAttending: true)
let g6 = Guest(name: "Gal Gadot", age: 36, isAttending: true)
let g7 = Guest(name: "Megan Fox", age: 34, isAttending: true)

let guestList = GuestList(guests: [g1, g2, g3, g4, g5, g6])

guestList.searchGuestByName(guestName: "Gal Gadot")

let guestsLessThanAge = guestList.guestsLessThanAge(age: 30)

let guestsComing = guestList.guestsAttending()
let guestsNotComing = guestList.guestsNotAttending()
guestList.printReport()
