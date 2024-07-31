import Foundation

class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        
        var result = 0

        for num in nums {
            if num % 3 != 0 {
                result += 1
            }
        }

        return result
    }
}
