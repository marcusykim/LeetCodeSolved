import Foundation

class Solution4 {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        
        // join and sort
        var joinedNums = (nums1 + nums2).sorted()

        print(joinedNums)


        // if odd, return middle
        if joinedNums.count % 2 != 0 {
            return Double(joinedNums[joinedNums.count / 2])
            
            //if even find, the middle point between the two centermost
        } else if joinedNums.count % 2 == 0 {

            let indexLeftOfMid = (joinedNums.count / 2) - 1
            let indexRightOfMid = joinedNums.count / 2

            return (Double(joinedNums[indexLeftOfMid]) + Double(joinedNums[indexRightOfMid])) / 2.0
            
        }

        return 1.0

    }
}
