import Foundation

class Solution2670 {
    func distinctDifferenceArray(_ nums: [Int]) -> [Int] {
        // create dictionary [index: value]
        // loop through array, storing these
        // loop again, this time, creating the diff array
        // at each element, aka index loop again twice
            // within this inner loop, create a set for each of the left elements, tallying total of distinct elements
            // another loop for the right, create a set for each of the right elements, tallying total of distinct elements

        // subtract tally of left from tally of right


        var diff: [Int] = []


        for i in 0..<nums.count {

            var leftSet = Set<Int>()
            var rightSet = Set<Int>()

            for j in 0...i {
                leftSet.insert(nums[j])
            }
            

            for k in i + 1..<nums.count {
                rightSet.insert(nums[k])
            }

            let distinctLeft = leftSet.count
            let distinctRight = rightSet.count

            diff.append(distinctLeft - distinctRight)
        }

        return diff
    }
}
