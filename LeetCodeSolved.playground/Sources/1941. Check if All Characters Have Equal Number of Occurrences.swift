import Foundation

class Solution1941 {
    func areOccurrencesEqual(_ s: String) -> Bool {
        
        let s = Array(s)

        var dict: [Character: Int] = [:]



        for char in s {
            if dict[char] != nil {
                dict[char]! += 1
            } else {
                dict[char] = 1
            }
        }

        let desiredValue = dict[s[0]]

        for value in dict.values {
            if value != desiredValue {
                return false
            }
        }

        return true

    }
}
