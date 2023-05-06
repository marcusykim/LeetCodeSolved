import Foundation

class Solution1464 {
    func maxProduct(_ nums: [Int]) -> Int {
        var nums = nums

        let max = nums.max()

        let index = nums.firstIndex(of: max!)

        nums.remove(at: index!)

        let nextMax = nums.max()

        return (max! - 1) * (nextMax! - 1)


    }
}
