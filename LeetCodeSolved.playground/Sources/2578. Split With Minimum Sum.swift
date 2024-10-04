import Foundation

class Solution {
    func splitNum(_ num: Int) -> Int {
        
        var sortedCharArray = Array(String(num)).sorted()

        var charNum1: [String] = []
        var charNum2: [String] = []

        for (index, char) in sortedCharArray.enumerated() {
            if index % 2 == 0 {
                charNum2.append(String(char))
            } else {
                charNum1.append(String(char))
            }
        }

        var charNum1Joined = charNum1.joined(separator: "")
        var charNum2Joined = charNum2.joined(separator: "")


        var num1 = Int(charNum1Joined)
        var num2 = Int(charNum2Joined)

        // for char in charNum1 {
        //     num1 += Int(char)!
        // }

        // for char in charNum2 {
        //     num2 += Int(char)!
        // }

        return num1! + num2!

    }
}
