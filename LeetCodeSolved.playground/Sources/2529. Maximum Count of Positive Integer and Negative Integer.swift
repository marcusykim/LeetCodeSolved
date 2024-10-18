import Foundation

class Solution {
    func maximumCount(_ nums: [Int]) -> Int {
        
        // loop through nums
            // increment counters for negative and positive
        

        // return largest of the counters

        var posCounter = 0
        var negCounter = 0

        for num in nums {
            if num < 0 {
                negCounter += 1
            } else if num > 0 {
                posCounter += 1
            }
        }

        return max(posCounter, negCounter)

    }
}
