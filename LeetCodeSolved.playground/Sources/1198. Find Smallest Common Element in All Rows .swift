import Foundation

class Solution1198 {
    func smallestCommonElement(_ mat: [[Int]]) -> Int {
        
        // strictly increasing order means that there are no repeated elements within one row
        // we can traverse the first row, then check each other rows for a given element in the first row.
        // if we ever find that all rows have a given element, we know we have the minimum

        let rowCount: Int = mat.count

        var yesAllContain: Bool = false

        var j: Int = 0

        for num in mat[0] {
            for row in 1..<rowCount {
                if mat[row].contains(num) {
                    yesAllContain = true
                } else if !mat[row].contains(num) {
                    yesAllContain = false
                    break
                }
                if row == rowCount - 1 && yesAllContain {
                    return num
                }
            }
            j += 1
        }

        return -1
    }
}
