import Foundation

class Solution2610 {
    func findMatrix(_ nums: [Int]) -> [[Int]] {
        var dict: [Int: Int] = [:]
        // We know that the number of rows is going to be the largest number that we count up to
        var numRows: Int = 0;

        for num in nums {
            if dict[num] != nil {
                dict[num]! += 1
            } else {
                dict[num] = 1
            }
            numRows = max(numRows, dict[num]!)
        }

        var result: [[Int]] = Array(repeating: [], count: numRows)
        
        for var dictEntry in dict {
            var column: Int = 0
            while dictEntry.value != 0 {
                result[column].append(dictEntry.key)
                dictEntry.value -= 1
                column += 1
            }
        }

        return result
    }
}
