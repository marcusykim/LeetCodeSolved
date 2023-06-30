import Foundation
class Solution1314 {
    func matrixBlockSum(_ mat: [[Int]], _ k: Int) -> [[Int]] {
        
        /*
            create a matrix answer by exploring a submatrix

            [
                [1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]
            ]

            starting with [0][0] in mat, we look at a submatrix localized around the number 1

            since k is 1. We only look at 1 element in each direction

            1 + 2 + 4 + 5 = 12

            12 is then inserted into [0][0] of the answer matrix

        */

         /*
                    x1(low): i - k unless this is less than zero, in which case just use zero
                    x2(high): i + k unless this is more than mat.count, in which case just use mat.count
                    y1(low): j - k unless this is less than zero, in which case just use zero
                    y2(low): j + k unless this more than mat[i].count, which case just use mat[i].count

                    let x1 = Math.max(i-k, 0)
                    let x2 = Math.min(i+k, mat.count)

                    let sum = 0;

                */

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

                print(xLow, xHigh, yLow, yHigh)
                // for x in x1..x2 {
                    //   for y in y1..y2 {
                    //       sum = sum + mat[x][y]
                    //   }
                    // }

                    // result[i][j] = sum

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
