import Foundation

class Solution {
    func divideArray(_ nums: [Int]) -> Bool {
        
        var dict: [Int: Int] = [:]

        for num in nums {
            if dict[num] == nil {
                dict[num] = 1
            } else {
                dict[num]! += 1
            }
        }

        for entry in dict {
            if entry.value % 2 != 0 {
                return false
            }
        }

        return true
    }
}
