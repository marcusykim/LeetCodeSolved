import Foundation

class Solution {
    func minBitFlips(_ start: Int, _ goal: Int) -> Int {
        
        // convert both start and goal to binary
        // compare each bit in start with goal, if any bit differs, flip the bit in start

        var startBinary = String(start, radix: 2)
        var goalBinary = String(goal, radix: 2)

        var arrStartBinary = Array(startBinary)
        var arrGoalBinary = Array(goalBinary)

        var numLeadingZeros = 0
        var result = 0

        if arrStartBinary.count < arrGoalBinary.count {
            for i in 0..<(arrGoalBinary.count - arrStartBinary.count) {
                arrStartBinary.insert("0", at: 0)
                numLeadingZeros += 1
            }
        } else if arrStartBinary.count > arrGoalBinary.count {
            for i in 0..<(arrStartBinary.count - arrGoalBinary.count) {
             arrGoalBinary.insert("0", at: 0)
             numLeadingZeros += 1
            }
        }

        for i in 0..<arrStartBinary.count {
            var j = arrStartBinary.count - i - 1
            if j >= numLeadingZeros - 1{
            
                if arrStartBinary[j] != arrGoalBinary[j] {
                    arrStartBinary[j] = arrStartBinary[j] == "0" ? "1" : "0"
                    result += 1

                    print("arrStartBinary: ", arrStartBinary)
                    print("arrGoalBinary: ", arrGoalBinary)
                }
            }
        }
        
        return result

    }
}
