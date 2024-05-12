import Foundation

class Solution {
    func differenceOfSums(_ n: Int, _ m: Int) -> Int {

        var num1: Int = 0
        var num2: Int = 0

        for item in 1...n {
            if item % m == 0 {
                num2 += item
            } else {
                num1 += item
            }
        }

        return num1 - num2

    }
}
