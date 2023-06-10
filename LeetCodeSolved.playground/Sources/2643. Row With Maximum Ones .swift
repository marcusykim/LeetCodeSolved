import Foundation

class Solution2643 {
    func rowAndMaximumOnes(_ mat: [[Int]]) -> [Int] {
        
        // nested loop
        // when iterating through the inner loop, count the number of 1's as a current tally
        // in the outer loop, compare the current tally to the last known max

        var max: Int = -1
        var indexOfMaxRow: Int = 0

        for (index, row) in mat.enumerated() {
            var currentTally: Int = 0

            for element in row {
                if element == 1 {
                    currentTally += 1
                }
            }

            if currentTally > max {
                max = currentTally
                indexOfMaxRow = index
            }

        }

        return [indexOfMaxRow, max]

    }
}
