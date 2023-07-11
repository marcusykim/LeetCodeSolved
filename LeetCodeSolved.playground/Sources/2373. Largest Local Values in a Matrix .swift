import Foundation

class Solution2373 {
    func largestLocal(_ grid: [[Int]]) -> [[Int]] {
        
        let size = grid.count - 2

        var result = Array(repeating: Array(repeating: 0, count: size), count: size)

        for i in 0..<size {
            for j in 0..<size {
                var maxVal = max(grid[i][j], grid[i][j + 1], grid[i][j + 2])
                maxVal = max(maxVal, grid[i + 1][j], grid[i + 1][j + 1], grid[i + 1][j + 2])
                maxVal = max(maxVal, grid[i + 2][j], grid[i + 2][j + 1], grid[i + 2][j + 2])

                result[i][j] = maxVal
            }
        }

        return result

    }
}
