import Foundation

class Solution {
    func checkString(_ s: String) -> Bool {
        
        var sArray = Array(s)

        if !sArray.contains("a") {
            return true
        } else if !sArray.contains("b") {
            return true
        }

        var checkChar = sArray.first

        if checkChar == "b" {
            return false
        }

        for i in 1..<sArray.count {
            if sArray[i - 1] == "b" && sArray[i] == "a" {
                return false
            }
        }

        return true

    }
}
