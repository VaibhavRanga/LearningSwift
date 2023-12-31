import Foundation

let number: Int = 10
let string: String = "Vaibhav"
let value: Bool = true
let doubleValue: Double = 12.45
let floatValue: Float = 34.42
let charValue: Character = "a"


let name = "Vaibhav"    //immutable
var myName = "Dinesh"   //mutable

var names = ["Dinesh", "Karuna"]     // array

let names1 = ["Dinesh", "Karuna"]

//names1.append("Vaibhav")      //gives an error as names1 was created by let

names.append("Vaibhav")     //new element can be added

//if a variable is created as let and it is assigned the type mutableArray then its value can be modified

let someNames = NSMutableArray(
    array: ["Vaibhav", "Dinesh"]
    )
someNames.add("Karuna") //mutable arrays can be assigned new values despite being initialized by let
