import Foundation

class Solution {
    func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
        
        // loop through nums1
            // check if nums2 contains, if true append
            // check if nums3 contains, if true append

        // repeat this loop for all nums

        var result: [Int] = []
        let lengths:[(Int, [Int])] = [(nums1.count, nums1), (nums2.count, nums2), (nums3.count, nums3)]
        let sortedArrays = lengths.sorted(by: { $0.0 > $1.0 })
        let orderedArrays = sortedArrays.map { $0.1 }

      
        var longest: [Int] = orderedArrays[0]
        var medium: [Int] = orderedArrays[1]
        var shortest: [Int] = orderedArrays[2]

            for num in longest {

                if medium.contains(num) {
                    if !result.contains(num) {
                        result.append(num)
                    }
                }

                if shortest.contains(num) {
                    if !result.contains(num) {
                        result.append(num)
                    }
                }
            }

            for num in medium {
                if shortest.contains(num) {
                    if !result.contains(num){
                        result.append(num)
                }
            }

        return result

    }
}
