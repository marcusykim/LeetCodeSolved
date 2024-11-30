import Foundation

class Solution {
    func findMissingRanges(_ nums: [Int], _ lower: Int, _ upper: Int) -> [[Int]] {
        guard nums.isEmpty == false else { return [[lower, upper]] }
        var result = [[Int]]()
        for i in 0..<nums.count-1 {
            if(nums[i]+1 != nums[i+1]) {
                result.append([nums[i]+1, nums[i+1]-1])
            }
        }
        if nums.first != lower { result.insert(([lower, (nums.first ?? 0) - 1]), at: 0)}
        if nums.last != upper { result.append([(nums.last ?? 0) + 1, upper])}
       return result
    }
}
