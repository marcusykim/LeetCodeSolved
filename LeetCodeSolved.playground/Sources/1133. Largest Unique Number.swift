import Foundation

class Solution {
    func largestUniqueNumber(_ nums: [Int]) -> Int {
        
        var dict: Dictionary<Int, Int> = [:]

        for num in nums {
            if dict[num] == nil {
                dict[num] = 1
            } else {
                dict[num]! += 1
            }
        }

        var set = Set(dict.filter{$0.value == 1}.map{$0.key}) ?? Set()

        return set.max() ?? -1

    }
}
