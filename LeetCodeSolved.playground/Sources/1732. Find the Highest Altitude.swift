import Foundation

class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var max = 0
        var sum = 0

        for currentGain in gain {
            sum += currentGain
            if sum > max {
                max = sum
            }
        }


        return max
    }
}
