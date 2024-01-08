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

print("------------------------")

let guestList = ["Vaibhav": 32, "Karuna": 27, "Dinesh": 24, "Mark": 34, "Ana": 31, "Julie": 29]

func searchGuest(guestName: String) {
    if var age = guestList[guestName] {
        print("\(guestName) found in the guest list and they are \(age) years old")
    } else {
        print("\(guestName) not found in the guest list")
    }
}

searchGuest(guestName: "Dinesh")
