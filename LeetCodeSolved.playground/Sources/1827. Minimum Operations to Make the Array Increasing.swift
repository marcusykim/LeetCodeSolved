class Solution {
    func minOperations(_ nums: consuming [Int]) -> Int {
        
        var result = 0

        for i in nums.indices.dropFirst() where nums[i - 1] >= nums[i] {
            let diff = nums[i - 1] + 1 - nums[i]
            nums[i] += diff
            result += diff
        }

        return result

    }
}
