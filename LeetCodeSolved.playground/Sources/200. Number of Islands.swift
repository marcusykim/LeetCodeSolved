import Foundation

class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var numberOfIslands = 0
        
        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                if grid[row][col] == "1" {
                    dfs(&grid, row, col)
                    numberOfIslands += 1
                }
            }
        }
        return numberOfIslands
    }
    
    private func dfs(_ grid: inout [[Character]], _ row: Int, _ col: Int) {
        if row < 0 || row >= grid.count || col < 0 || col >= grid[0].count { return }
        if grid[row][col] != "1" { return }
        grid[row][col] = "0"

        dfs(&grid, row - 1, col)
        dfs(&grid, row + 1, col)
        dfs(&grid, row, col - 1)
        dfs(&grid, row, col + 1)
    }
}
