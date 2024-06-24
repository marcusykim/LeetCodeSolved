import Foundation

class Solution {
    func numberOfPairs(_ nums: [Int]) -> [Int] {
        
        var dict: [Int: Int] = [:]
        var result: [Int] = [0, 0]


        for num in nums {
            if dict[num] != nil {
                dict[num]! += 1
            } else {
                dict[num] = 1
            }
        }

        for num in dict {
            if num.value % 2 == 1 {
                result[1] += 1
            }

            result[0] += num.value / 2
        }

    return result

    }
}
