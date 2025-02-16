import Foundation

class Solution {
    func finalString(_ s: String) -> String {
        // cast `s` into an array
        // loop through array, append characters into a growing string
            // if we find "i"
                //reverse the string we have so far, then continue

        var sArray = Array(s)

        var result: [Character] = []

        for char in sArray {

            var tempString = String(char)

            if tempString == "i" {
                result = result.reversed()
                continue
            }

            result.append(char)
        }

        return String(result)

    }
}
