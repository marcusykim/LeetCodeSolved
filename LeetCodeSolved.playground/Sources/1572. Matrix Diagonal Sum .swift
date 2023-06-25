import Foundation

class Solution1572 {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var result: Int = 0
        var n = mat.count
        for i in 0..<n {
            result += mat[i][i]
            result += mat[i][n - i - 1]
        }
        
        return n % 2 == 0 ? result : result - mat[n/2][n/2]
    }
}
