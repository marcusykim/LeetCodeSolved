import Foundation

class Solution1689 {
    func minPartitions(_ n: String) -> Int {
        
        var nStringArray: [Character] = Array(n)

        var max: Int = 0

        for char in nStringArray {
            if char.wholeNumberValue! > max {
                max = char.wholeNumberValue!
            }
        }

        return max

    }
}
