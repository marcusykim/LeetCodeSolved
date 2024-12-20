import Foundation

class Solution {
    func getFinalState(_ nums: [Int], _ k: Int, _ multiplier: Int) -> [Int] {
        
        var nums = nums

        for _ in 1...k {
            var min = nums.min()
            var minIndex = nums.firstIndex(of: min!)
            nums[minIndex!] = min! * multiplier
        }


        return nums

    }
}
