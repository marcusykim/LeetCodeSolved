import Foundation

class Solution {
    func minimizedStringLength(_ s: String) -> Int {

        // cast string to array
        // loop through array at the first instance of a char, append to result array
        // skip all other occurrences

        var arrayS = Array(s)

        var dict: [Character: Character] = [:]

        for char in arrayS {
            if dict[char] == nil {
                dict[char] = char
            }
        }

        return dict.count


    }
}
