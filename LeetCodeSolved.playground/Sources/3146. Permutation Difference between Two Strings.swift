import Foundation

class Solution {
    func findPermutationDifference(_ s: String, _ t: String) -> Int {
        
        // loop through s enumerated
            // use index(of:) to find index of char in t
            // absolute difference
            // add to growin result

            var s = Array(s)
            var t = Array(t)
            var result = 0

            for (index, char) in s.enumerated() {
                var abs = abs(index - t.index(of: char)!)
                result += abs
            }


        return result

    }
}
