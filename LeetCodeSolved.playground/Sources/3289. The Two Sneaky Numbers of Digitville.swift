import Foundation

class Solution {
    func getSneakyNumbers(_ nums: [Int]) -> [Int] {
        
        var set: Set<Int> = []

        var result: Array<Int> = []

        for digit in nums {
            if !set.insert(digit).inserted {
                result.append(digit)
            }
        }

        return result

    }
}
