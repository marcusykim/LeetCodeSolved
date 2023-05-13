import Foundation

class Solution1748 {
    func sumOfUnique(_ nums: [Int]) -> Int {
        
        var dict: [Int: Int] = [:]

        for num in nums {
            if dict[num] != nil {
                dict[num]! += 1
            } else {
                dict[num] = 1
            }
        }

        let keys = dict.filter{$0.value == 1}.keys

        let sum = keys.reduce(0, +)

        return sum

    }
}
