import Foundation

class Solution {
    func maximumNumberOfStringPairs(_ words: [String]) -> Int {
        var result = 0
        var words = Array(words)
        for i in 0..<words.count {
            for j in (i + 1)..<words.count {
                if words[i] == String(words[j].reversed()) {
                    result += 1
                }
            }
        }

        return result

    }
}
