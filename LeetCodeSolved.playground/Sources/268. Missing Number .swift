import Foundation

class Solution268 {
    func missingNumber(_ nums: [Int]) -> Int {
        
        // loop through nums
            // use .contains() method to check if nums contains index

        let nums = nums.sorted()

        if nums.first != 0 {
            return 0
        }

        if nums.last != nums.count {
            return nums.count
        }

        for (checkNum, num) in nums.enumerated() {
            
            if num != checkNum {
                return checkNum
            }
        }

        return -1

    }
}
