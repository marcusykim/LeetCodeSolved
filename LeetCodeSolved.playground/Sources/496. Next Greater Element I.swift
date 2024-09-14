import Foundation

class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        // loop through nums1
        // for each element in nums1, use index(of:) to find the element's index in nums2
        // loop through nums2, starting with the index we found, comparing with if >
        // append to result array

        var result: [Int] = []

        for indexInNums1 in 0..<nums1.count {

            print("indexInNums1 ", indexInNums1)

            var indexInNums2 = nums2.firstIndex(of: nums1[indexInNums1])!

            print("indexInNums2 ", indexInNums2)

            var j = indexInNums2
            while j < nums2.count {

                print("j ", j)
                
                if nums2[j] > nums2[indexInNums2] {
                    result.append(nums1[nums2[indexInNums2]])
                }
                if j == nums2.count - 1 {
                    result.append(-1)
                }

                print(result)

                j += 1
            }
        }

        return result
    }
}
