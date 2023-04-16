import Foundation

class Solution1351 {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var counter: Int = 0

        for row in 0..<grid.count {
            for index in 0..<grid[row].count {
                if grid[row][index] < 0 {
                    counter += 1
                }
            }
        }

        return counter
    }
}
