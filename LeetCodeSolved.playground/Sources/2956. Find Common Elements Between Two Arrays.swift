import Foundation

class Solution {
    func findIntersectionValues(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        // use .contains()

        var answer1 = 0
        var answer2 = 0

        for num in nums1 {
            if nums2.contains(num) {
                answer1 += 1
            }
        }

        for num in nums2 {
            if nums1.contains(num) {
                answer2 += 1
            }
        }

        return [answer1, answer2]

    }
}
