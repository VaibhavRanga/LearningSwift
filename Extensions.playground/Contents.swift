import Foundation

extension String {
    func trimmed() -> String {                              //It will return a value
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {                                  //It will update the value of the original variable
        self = self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var linesSeparated: [String] {                          //It will return a value
        self.components(separatedBy: .newlines)
    }
}

var someString1 = "      Hello there   "

print(someString1.trimmed())

var someString2 = "      Hello there   "

someString2.trim()
print(someString2)

var lyrics = """
    But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.linesSeparated)
