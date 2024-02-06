
//set: can't contain duplicates, are fast and unordered
//they are provide constant time lookup
//must conform to hashable (where hashable is an identifier)
//string, int, bool etc automatically conform to hashable
//custom or user created data types need to be conformed to hashable

var mySet: Set<Int> = [123, 34, 53, 89, 23, 890, 7]

mySet.insert(339)

print(mySet)
mySet.contains(892)




var myArray: [Int] = [12, 2, 9, 59, 84, 59, 8, 9]

var myNewSet = Set(myArray)
print("myArray: \(myArray)")
print("myNewSet: \(myNewSet)")
