import Foundation

class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        
        var nums = nums

        var result = 0

        var i = 1

        while i < nums.count {
            
            var temp = nums[i]
            nums[i] = max(nums[i - 1] + 1, nums[i])

            if temp != nums[i] {
                result += 1
            }

            i += 1

            if i == nums.count && nums[i - 2] < nums[i - 1] {
                break
            } else if i == nums.count {
                i = 1
            }
        }


        return result

    }
}
