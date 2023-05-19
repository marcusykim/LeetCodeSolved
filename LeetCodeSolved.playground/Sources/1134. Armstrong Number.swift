import Foundation

class Solution1134 {
    func isArmstrong(_ n: Int) -> Bool {
        
        // convert n into a String
        // find count of String
        // loop through digits, raising each digit to count
        // sum all results
        // compare grand sum with n

        var nString: String = String(n)
        var exponent: Int = nString.count
        var result: Int = 0

        for char in nString {
            result += Int(pow(Double(char.wholeNumberValue!), Double(exponent)))
        }

        return result == n

    }
}
