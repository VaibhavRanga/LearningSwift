

//arrays are: ordered, slow, can contain duplicates


//blank array

var shoppingCart = [String]()
//or
var myArray: [String] = []

myArray.append("Sdfjoisdf")

//initializing while declaring

var f1Drivers = ["Lewis Hamilton", "Charles Leclerc", "Max Verstappen"]
var prices = [123, 234, 23, 1293, 1, 34, 53498, 327, 82]

//add data to array

shoppingCart.append("MacBook")   //add data at the end of the array
shoppingCart.append("iPhone")

shoppingCart.insert("iPad", at: 1)  //add data at an index
shoppingCart.append(contentsOf: ["Apple watch", "Airpods"])     //add multiple items

shoppingCart.indices    //indices of the contained elements
print(shoppingCart)

//accessing items

print(f1Drivers[1])
let f1Driver1 = f1Drivers[2]

//removing elements from an array

prices.remove(at: 2)    //removes item at specified index
prices.removeFirst()    //removes the first item
prices.removeLast()     //removes the last item
//prices.removeAll()    //removes all the items in the array

print(prices)

prices.sort()
prices.reverse()
prices.shuffle()


//Using arrays with custom data types

struct ProductModel {
    let name: String
    let price: Int
}

var myProducts: [ProductModel] = [
    ProductModel(name: "Product 1", price: 345),
    ProductModel(name: "Product 2", price: 22),
    ProductModel(name: "Product 6", price: 9)
]
