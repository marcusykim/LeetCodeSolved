import Foundation

class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        

        var sum = 0

        for i in 0..<arr.count {
            for j in (i + 1)..<arr.count {
                if (j - i) % 2 != 0 {
                    sum += (j - i)
                }
            }
        }

        return sum

    }
}
