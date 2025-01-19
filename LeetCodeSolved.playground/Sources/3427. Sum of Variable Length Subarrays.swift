import Foundation

class Solution {
    func subarraySum(_ nums: [Int]) -> Int {
        
        var result = 0

        for i in 0..<nums.count {
            let start = max(0, i - nums[i])
            let subArray = nums[start...i]
            let sum = subArray.reduce(0, +)

            result += sum
        }
        return result
    }
}
