for i in 0 ... 10 {
    print(i)
}

print("-----------------------------")

for i in 0 ..< 10 {
    print(i)
}

print("-----------------------------")

var prices = [3900, 39200, 90080, 38923, 3238]
for item in prices {
    print("Price is: \(item)")
}

print("-----------------------------")

var discount = 5

for i in 0 ..< prices.count {
    prices[i] -= discount
    print("New price is: \(prices[i])")
}

var countDown = 10
var test = 10

while countDown >= 0 && test >= 5 {
    
    print(countDown)
    
    countDown -= 1
    test -= 1
}
print("Rocket launches")
