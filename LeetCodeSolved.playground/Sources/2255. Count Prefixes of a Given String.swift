import Foundation

class Solution {
    func countPrefixes(_ words: [String], _ s: String) -> Int {

        var result = 0

        for word in words {
            if s.hasPrefix(word) {
                result += 1
            }
        }

        return result

    }
}
