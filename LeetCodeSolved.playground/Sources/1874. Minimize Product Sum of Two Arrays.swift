import Foundation

class Solution1874 {
    func minProductSum(_ nums1: [Int], _ nums2: [Int]) -> Int {
        

        var mute1Nums = nums1
        var mute2Nums = nums2

        mute1Nums = mute1Nums.sorted()
        mute2Nums = mute2Nums.sorted()

        mute2Nums = mute2Nums.reversed()
        var result = 0
        for (index, num) in mute1Nums.enumerated() {

            result += num * mute2Nums[index]

        }

        return result

    }
}
