import Foundation

class Solution2057 {
    func smallestEqual(_ nums: [Int]) -> Int {

        for (index, num) in nums.enumerated() {
            if index % 10 == num {
                return index
            }
        }

    return -1

    }
}
