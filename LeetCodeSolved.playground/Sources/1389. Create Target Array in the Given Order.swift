import Foundation

class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        
        var targetArray: [Int] = []

        // loop
          // take the value at num[i] and insert it into targetArray at index[i]

        for i in 0..<nums.count {
            targetArray.insert(nums[i], at: index[i])
        }

        return targetArray

    }
}
