import Foundation

class Solution {
    func numberOfPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
        // nested loop
            // divide nums1[i] by nums2[j] * k


        var result = 0

        for outerNum in nums1 {
            for innerNum in nums2 {
                if outerNum % (innerNum * k) == 0 {
                    result += 1
                }
            }
        }


        return result
    }
}
