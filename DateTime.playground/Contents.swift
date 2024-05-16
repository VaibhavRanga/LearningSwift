import Foundation

var components = DateComponents()
components.hour = 8
components.minute = 0

let date = Calendar.current.date(from: components) ?? .now                              //To set a particular time

var components1 = Calendar.current.dateComponents([.hour, .minute], from: date)         //To get time from a date component

let hour = components1.hour ?? 0
let minute = components1.minute ?? 0

print("\(hour), \(minute)")

let timeNow = Date.now                                                                  //Current date and time

print(timeNow)
