class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {

        var grid = grid
        var result = 0
        for row in 0..<grid.count {
            for column in 0..<grid[0].count {
                print(result)
                if grid[row][column] == "1" {
                    dfs(&grid, row, column)
                    result += 1
                }
            }
        }

        return result
    }

    func dfs(_ grid: inout [[Character]], _ row: Int, _ column: Int) {

        if row < 0 || row >= grid.count || column < 0 || column >= grid[0].count {return}
        if grid[row][column] != "1" {return}

        grid[row][column] = "0"

        dfs(&grid, row - 1, column)
        dfs(&grid, row + 1, column)
        dfs(&grid, row, column - 1)
        dfs(&grid, row, column + 1)

    }
}
