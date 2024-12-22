import Foundation

class Solution {
    func minimumAverage(_ nums: [Int]) -> Double {
        
        var averages: [Double] = []

        var nums = nums.sorted()

        for _ in 0..<nums.count / 2 {

            var minElement = Double(nums.first!)
            var maxElement = Double(nums.last!)
            averages.append((minElement + maxElement) / 2.0)

            nums.removeFirst()
            nums.removeLast()

        }

        return averages.min()!

    }
}
