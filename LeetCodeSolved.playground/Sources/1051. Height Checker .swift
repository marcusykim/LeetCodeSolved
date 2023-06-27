import Foundation

class Solution1051 {
    func heightChecker(_ heights: [Int]) -> Int {
        
        let expected = heights.sorted()

        var result: Int = 0

        for i in 0..<heights.count {
            if expected[i] != heights[i] {
                result += 1
            }
        }

        return result

    }
}
