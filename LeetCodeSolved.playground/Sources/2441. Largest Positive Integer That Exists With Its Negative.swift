import Foundation

class Solution {
    func findMaxK(_ nums: [Int]) -> Int {
        var reversedNums = Array(nums.sorted().reversed())

        for num in reversedNums {
            if reversedNums.contains(-num) {
                return num
            }
        }

        return -1
    }
}
