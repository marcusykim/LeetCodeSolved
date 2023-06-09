import Foundation

class Solution2089 {
    func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
        
        var nums = nums.sorted()

        var result: [Int] = []

        for (index, num) in nums.enumerated() {
            if num == target {
                result.append(index)
            }
        }

        return result


    }
}
