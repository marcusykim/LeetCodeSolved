import Foundation

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
    
        let maxLength = max(a.count, b.count)

        var aReversed = String(a.reversed())
        var bReversed = String(b.reversed())

        var largerStringA = aReversed.padding(toLength: maxLength, withPad: "*", startingAt: 0)
        var largerStringB = bReversed.padding(toLength: maxLength, withPad: "*", startingAt: 0)

        largerStringA = String(largerStringA.reversed())
        largerStringB = String(largerStringB.reversed())

        var arrayLargerA = Array(largerStringA)
        var arrayLargerB = Array(largerStringB)

        let paddingString = ""

        var tempResultArray = Array(repeating: " ", count: 10000)
        var result = paddingString.padding(toLength: maxLength, withPad: " ", startingAt: 0)

       // print(result)

        var carry: Bool = false

        for i in 0..<maxLength {
            var j = maxLength - 1 - i
            if arrayLargerA[j] == "1" && arrayLargerB[j] == "1" {
                tempResultArray[j] = "0"
                if carry {
                    tempResultArray[j] = "1"
                }
                carry = true
            } else if arrayLargerA[j] != arrayLargerB[j] {
                tempResultArray[j] = "1"
                if carry {
                    tempResultArray[j] = "0"
                    carry = true
                }
                
            } else if arrayLargerA[j] == "0" && arrayLargerB[j] == "0"{
                tempResultArray[j] = "0"

                if carry {
                    tempResultArray[j] = "1"
                    carry = false
                }
            }
        }

        result = tempResultArray.joined(separator: "")

        print(Int(result))


        return ""

    }
}
