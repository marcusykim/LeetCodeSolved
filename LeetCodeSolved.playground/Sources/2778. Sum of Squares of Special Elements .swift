import Foundation

class Solution {
    func sumOfSquares(_ nums: [Int]) -> Int {
        

        // loop i in 1 through nums.count
            // if i divides n
                // square nums[i] and add to result

        var result = 0

        for (index, num) in nums.enumerated() {
            if nums.count % (index + 1) == 0 {
                result += num * num
            }
        }

        return result
    }
}
