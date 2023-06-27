import Foundation

// This is a solution that I found on LeetCode
// https://leetcode.com/problems/sort-the-matrix-diagonally/solutions/746151/simple-swift-solution/
// I am going to implement this myself

class Solution1329 {
    func diagonalSort(_ mat: [[Int]]) -> [[Int]] {
        var max = [Int: [Int]]()
        for (i, row) in mat.enumerated() {
            for (j, col) in row.enumerated() {
                let diff = j - i
                max[diff, default: []].append(mat[i][j])
            }
        }
        for (key, values) in max {
            var valCopy = values
            valCopy.sort()
            max[key] = valCopy
        }
        var matCopy = mat
        for (i, row) in matCopy.enumerated() {
            for (j, col) in row.enumerated() {
                let diff = j - i
                var values = max[diff]!
                matCopy[i][j] = values.removeFirst()
                max[diff] = values
            }
        }
        return matCopy
    }
}
