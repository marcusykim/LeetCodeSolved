import Foundation

class Solution {
    func countKDifference(_ nums: [Int], _ k: Int) -> Int {
        
        // loop i
            // loop j where j is i + 1
                // if abs value nums[i] - nums[j] == k, increment result


        var result = 0

        for i in 0..<nums.count {
            for j in i..<nums.count {
                if abs(nums[i] - nums[j]) == k {
                    result += 1
                }
            }
        }

        return result
    }
}
