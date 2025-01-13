import Foundation

class Solution {
    func minSubsequence(_ nums: [Int]) -> [Int] {
        
        // find max
        // find next highest with index greater than index of max
        // repeat until all these "maxes" sum to higher than "non maxes"

        // need sum of all elements
        // whenever we find the max or "next max"
            // subtract the value from the sum of all elements
            // then compare to sum of "maxes"

        var nums = nums

        var nonMaxSum = nums.reduce(0, +)
        var maxSum = 0
        var result: [Int] = []

        for (index, num) in nums.enumerated() {
            let max = nums.max()!
            let maxIndex = nums.firstIndex(of: max)!

            nums.remove(at: maxIndex)
            result.append(max)

            maxSum += max
            nonMaxSum = nums.reduce(0, +)

            if maxSum > nonMaxSum {
                return result.sorted().reversed()
            }
        }


        print(nonMaxSum)

        return []


    }
}
