import Foundation

class Solution {
    func maximumOddBinaryNumber(_ s: String) -> String {
        
        if s.count == 1 {
            return "1"
        }

        var arrayS = Array(s)

        var reverseSorted = Array(arrayS.sorted().reversed())

        reverseSorted.removeFirst()
        reverseSorted.append("1")

        var joined = reverseSorted.map { String($0) }.joined(separator: "")

        return joined

    }
}
