import Foundation

class Solution {
    func countOperations(_ num1: Int, _ num2: Int) -> Int {
        
        var num1 = num1
        var num2 = num2

            var result = 0

            if num1 == 0 || num2 == 0 {
                    return result
                }

            while true {
                if num1 >= num2 {
                    num1 -= num2
                    result += 1
                } else {
                    num2 -= num1
                    result += 1
                }

                if num1 == 0 || num2 == 0 {
                    return result
                }
            }

    }
}
