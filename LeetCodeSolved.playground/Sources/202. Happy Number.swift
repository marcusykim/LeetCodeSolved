import Foundation

class Solution {
    func isHappy(_ n: Int) -> Bool {
        
        // num is 1, return true

    //loop until num is 1
        // convert to string
        // convert to array of char
        // loop
            // square digit
            // add to result
        //concatenate
        // convert to int
        
        var num: Int = n

        while num != 1 {

            var stringNum: String = String(num)
            var tempTransformedNum: Int = 0

            if stringNum.count == 1 {
                return false
            }

            for char in stringNum {
                tempTransformedNum += Int(pow(Double(char.wholeNumberValue!), 2))
            }

            num = tempTransformedNum
        }

        return true

    }
}
