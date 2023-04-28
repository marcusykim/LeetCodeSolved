import Foundation

class Solution2574 {
    func leftRightDifference(_ nums: [Int]) -> [Int] {
        // traverse the nums both from the left and from the right at the same time
        // while traversing, keep a growing leftSum and rightSum variable
        // add at each iteration, input the growing sums into the their appropriate place into the array

        var leftSum: Int = 0
        var leftSumArray: [Int] = [0]
        var rightSum: Int = 0
        var rightSumArray: [Int] = Array(repeating: 0, count: nums.count)

        var result: [Int] = []

        for i in 0..<nums.count - 1 {
            var j = nums.count - i - 1

            leftSum += nums[i]
            leftSumArray.append(leftSum)
           
            rightSum += nums[j]
            rightSumArray[j - 1] = rightSum

            
            
        }

        for i in 0..<nums.count {
            result.append(abs(leftSumArray[i] - rightSumArray[i]))
        }


        print(leftSumArray)
        print(rightSumArray)

        return result
    }
}
