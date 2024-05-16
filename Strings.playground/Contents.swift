import SwiftUI

func removeWhitespacesAndNewlines() {
    let input = " a b kc "
    
    //removes spaces and line breaks inside the input
    let letters = input.components(separatedBy: .whitespacesAndNewlines)
    //removes spaces and line breaks outside the input
    let trimmedLetters = input.trimmingCharacters(in: .whitespacesAndNewlines)
    
    print(letters)
    print(trimmedLetters)
}

func spellChecker() {
    let word = "swift"
    
    let checker = UITextChecker()
    
    //Used as a bridge between swift and objective-C
    let range = NSRange(location: 0, length: word.utf16.count)
    
    //Checks for mis-spelled word and returns a range where the mis-spelled word was found or returns NSNotFound otherwise
    let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
    
    let allGood = misspelledRange.location == NSNotFound
}
