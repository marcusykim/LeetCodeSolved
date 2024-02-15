import Foundation

class Solution {
    func isStrictlyPalindromic(_ n: Int) -> Bool {
        
        //loop
            // convert the Int into the representation of the current base
            //check whether palindrome by iterating backwards and forwards at the same time with an increasing index i and decreasing index j
            // whenever we find a mismatch, return false, else, keep looping
            var basedArray: [Int] = []

            for b in 2...(n - 2)  {
                basedArray.insert(n % b, at: 0)
                
            }

            var j = basedArray.count - 1
             for i in 0..<(basedArray.count / 2) {
                    if basedArray[i] != basedArray[j]{
                        return false
                    } else {
                        j -= 1
                    }
                }

        return true

    }
}
