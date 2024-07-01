import Foundation

class Solution {
    func countGoodSubstrings(_ s: String) -> Int {
        

        //cast string to array
        // loop until i + 2 == count - 1
            // array [i]
            // array [i + 1]
            // array [i + 2]
            // if any of the above are equal, break
            // else increment result

            //return result

        var arrayS = Array(s)
        var result = 0

        for i in 0..<arrayS.count - 2{
            let first = arrayS[i]
            let second = arrayS[i + 1]
            let third = arrayS[i + 2]

            if first == second || first == third || second == third {
                continue
            } else {
                result += 1
            }
        }

        return result

    }
}
