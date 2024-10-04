import Foundation

class Solution {
    func greatestLetter(_ s: String) -> String {

        // start loop through upper case alphabet backward
        // check if string contain lower case
        // return first true


        let backwardsUpperCaseAlphabet = Array("ZYXWVUTSRQPONMLKJIHGFEDCBA")

        for letter in backwardsUpperCaseAlphabet {
            if s.contains(letter.lowercased()) && s.contains(letter) {

                return String(letter)
            }
        }


        return ""

    }

}
