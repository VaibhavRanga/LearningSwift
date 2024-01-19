
//MARK: Standard enum

enum ColorScheme {
    case light
    case dark
    case custom
    case system
}

var scheme: ColorScheme = .system

switch scheme {
case .light:
    print("Light color scheme")
case .dark:
    print("Dark color scheme")
case .custom:
    print("Custom color scheme")
case .system:
    print("System color scheme")
}





// MARK: Enum raw values

enum Weekday: String {
    case monday = "M"
    case tuesday = "T"
    case wednesday = "W"
    case thursday = "Th"
    case friday = "F"
    case saturday = "Sa"
    case sunday = "Su"
}

var today: Weekday = .friday

print(today)
print(today.rawValue)

enum APIStatusCode: Int {
    case success = 200
    case unauthorized = 401
    case notFound = 404
    case serverError = 500
}

var statusCode: APIStatusCode = .success

print("The status code from API request is: \(statusCode.rawValue)")

switch statusCode {
case .success:
    print("Do something")
case .unauthorized:
    print("The status code from API request is: \(statusCode.rawValue)")
case .notFound:
    print("The status code from API request is: \(statusCode.rawValue)")
case .serverError:
    print("The status code from API request is: \(statusCode.rawValue)")
}






//MARK: Associated values & computed properties

enum OrderStatus {
    case processed
    case shipped(trackingId: String, shippingTime: Int)        //with associated values we can't give a data type viz. Int to the OrderStatus enum
    case delivered
    
    var statusMessage: String {                                //computed properties
        switch self {
        case .processed:
            return "Your order has been processed"
        case .shipped(let trackingId, let shippingTime):
            return "Your order has shipped and the tracking id is: \(trackingId). It will be delivered in \(shippingTime) days"
        case .delivered:
            return "Your order has been delivered"
        }
    }
}

var status: OrderStatus = .processed
print(status.statusMessage)

status = .shipped(trackingId: "1324243", shippingTime: 3)
print(status.statusMessage)






// MARK: Using enums with case iterable

enum Colors: CaseIterable {
    case red
    case green
    case blue
    case orange
}

let allColors = Colors.allCases

for color in allColors {
    print("Color is \(color)")
}
