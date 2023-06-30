import Foundation
class Solution1314 {
    func matrixBlockSum(_ mat: [[Int]], _ k: Int) -> [[Int]] {

        var result = mat
        
        for i in 0..<mat.count {
            for j in 0..<mat[i].count {

                var xLow: Int {
                    if i - k < 0 {
                        return 0
                    } else {
                        return i - k
                    }
                }

                var xHigh: Int {
                    if i + k > mat.count - 1{
                        return mat.count - 1
                    } else {
                        return i + k
                    }
                }

                var yLow: Int {
                    if j - k < 0 {
                        return 0
                    } else {
                        return j - k
                    }
                }

                var yHigh: Int {
                    if j + k > mat[j].count - 1{
                        return mat[j].count - 1
                    } else {
                        return j + k
                    }
                }

                    var sum = 0

                    for x in xLow...xHigh {
                        for y in yLow...yHigh{
                            sum += mat[x][y]
                        }
                    }

                result[i][j] = sum

            }
        }

        return result

    }
}
