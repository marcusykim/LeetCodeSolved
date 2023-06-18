import Foundation

class Solution349 {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        // find out which array is shorter
        // loop through that array
        // use .contains() to check longer array for each element, then append each found element to the array

        var shorterArray: [Int]
        var longerArray: [Int]
        var resultArray: [Int] = []


        if nums1.count < nums2.count {
            shorterArray = nums1
            longerArray = nums2
        } else {
            shorterArray = nums2
            longerArray = nums1
        }

        for num in shorterArray {
            if longerArray.contains(num) {
                if !resultArray.contains(num) {
                    resultArray.append(num)
                }
            }
        }

        return resultArray

    }
}
