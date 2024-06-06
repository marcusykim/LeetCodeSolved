import Foundation

class Solution {
    func isAcronym(_ words: [String], _ s: String) -> Bool {
        
        var checkString = ""

        for word in words {
            if let firstChar = word.first {
                checkString += String(firstChar)
            }
        }

        return checkString == s

    }
}
