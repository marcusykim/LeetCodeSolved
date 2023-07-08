import Foundation

class Solution2351 {
    func repeatedCharacter(_ s: String) -> Character {
        
        // for loop
            // keep adding to set
            // upon the first failure, return that character

        let s = Array(s)

        var set: Set<Character> = []

        for char in s {
            if set.contains(char) {
                return char
            } else {
                set.insert(char)
            }
        }

        return "0"


    }
}
