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

print("-----------------------------")

var names = ["Vaibhav", "Karuna", "Dinesh", "Suresh", "Mahesh"]

for name in names where name == "Dinesh" {
    print(name)
}


print("-----------------------------")



struct LessonModel {
    let title: String
    let isFavorite: Bool
}

let lessons: [LessonModel] = [
    LessonModel(title: "Lesson 1", isFavorite: false),
    LessonModel(title: "Lesson 2", isFavorite: true),
    LessonModel(title: "Lesson 3", isFavorite: true),
    LessonModel(title: "Lesson 4", isFavorite: false)
]

var favoriteLessons: [LessonModel] = []

for lesson in lessons {
    if lesson.isFavorite {
        favoriteLessons.append(lesson)
    }
}

print(favoriteLessons)


for (n, x) in lessons.enumerated() {        //enumerated sequence with the index and its corresponding element
    print("index: \(n) and lesson: \(x)")
}

//"break" causes the loop to end while "continue" makes the loop to immediately jump to the next iteration
