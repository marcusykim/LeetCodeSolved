import Foundation

class Solution {
    func findNonMinOrMax(_ nums: [Int]) -> Int {
        for i in nums {
            if i < nums.max()! && i > nums.min()! {
                return i
            }
        }
        return -1
    }
}
