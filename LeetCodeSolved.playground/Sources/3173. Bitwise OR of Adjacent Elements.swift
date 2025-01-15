import Foundation

class Solution {
    func orArray(_ nums: [Int]) -> [Int] {
        
        var result: [Int] = []

        for i in 0..<nums.count - 1 {
            result.append(nums[i] | nums[i + 1])
        }


        return result

    }
}
