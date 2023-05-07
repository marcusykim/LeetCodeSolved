import Foundation

class Solution2215 {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        
        // use contains

        var resultList: [[Int]] = [[],[]]

        for num in nums1 {
            if !nums2.contains(num) {
                if !resultList[0].contains(num) {
                    resultList[0].append(num)
                }
            }
        }

        for num in nums2 {
            if !nums1.contains(num) {
                if !resultList[1].contains(num) {
                    resultList[1].append(num)
                }
            }
        }

        return resultList

    }
}
