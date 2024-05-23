import Foundation

class Solution {
    func minOperations(_ nums: [Int], _ k: Int) -> Int {
        //loop
            // whenever a number is less than k, increment operations counter

            var result = 0

            for num in nums {
                if num < k {
                    result += 1
                }
            }


            return result
    }
}
