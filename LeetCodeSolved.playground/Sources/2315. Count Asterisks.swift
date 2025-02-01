import Foundation

class Solution {
    func countAsterisks(_ s: String) -> Int {
      
        // loop
            // increment counter until we reach our first |
            // keep iterating, but don't count
            // when we reach the second |
                // keep iterating but count

        var sArray = Array(s)
        var doWeCount = true
        var result = 0

        for char in sArray {
            if char == "|" && doWeCount == true {
                doWeCount = false
            } else if char == "|" && doWeCount == false {
                doWeCount = true
            }
            
            if doWeCount == true {
                if char == "*" {
                    result += 1
                }
            }


        }

        return result
    }
}
