import Foundation

class Solution {
    func returnToBoundaryCount(_ nums: [Int]) -> Int {
        
        var boundary = 0
        var result = 0


        for steps in nums {
            boundary += steps
            if boundary == 0 {
                result += 1
            }
        }


        return result

    }
}
