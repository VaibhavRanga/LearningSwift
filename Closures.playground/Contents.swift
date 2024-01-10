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
