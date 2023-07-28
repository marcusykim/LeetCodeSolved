import Foundation

class Solution1252 {
    func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
        
        var matrix: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
        var result: Int = 0

        for coordinate in indices {
            let x: Int = coordinate[0]
            let y: Int = coordinate[1]

            matrix[x] = matrix[x].map{$0 + 1}

            for i in 0..<matrix.count {
                matrix[i][y] += 1
            }
            print(matrix)

        }

        for row in matrix {
            let oddNums = row.filter{$0 % 2 != 0}
            result += oddNums.count
        }

        return result
    }
}
