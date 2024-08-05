import Foundation

class Solution {
    func shortestToChar(_ s: String, _ c: Character) -> [Int] {
        
        var arrayS = Array(s)

        var cIndexes: [Int] = []

        var absValArray: [Int] = []

        for i in 0..<arrayS.count {
            if arrayS[i] == c {
                cIndexes.append(i)
            }
        }

        for i in 0..<arrayS.count {
            for j in 0..<cIndexes.count {
                absValArray.append(abs(j - i))
            }
        }

        return absValArray

    }
}
