import Foundation

class Solution {
    func resultArray(_ nums: [Int]) -> [Int] {
        
        var arr1 = [nums[0]]
        var arr2 = [nums[1]]

        for index in 2..<nums.count {
            if arr1.last! > arr2.last! {
                arr1.append(nums[index])
            } else {
                arr2.append(nums[index])
            }
        }

        return arr1 + arr2

    }
}
