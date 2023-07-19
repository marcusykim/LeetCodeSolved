import Foundation

class Solution326 {
    func isPowerOfThree(_ n: Int) -> Bool {

        if n == 0 {
            return false
        }

        var i = n

        while i % 3 == 0 {
            i /= 3
        }

        return i == 1

    }
}
