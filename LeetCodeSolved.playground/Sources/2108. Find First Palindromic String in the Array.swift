import Foundation

class Solution2108 {
    func firstPalindrome(_ words: [String]) -> String {
        // for loop that loops through words
            // while loop i < j,
                // i goes from left
                // j goes from right


        for word in words {
            let arrayWord = Array(word)

            if arrayWord.count == 1 {
                return word
            }

            var i = 0
            var j = arrayWord.count - 1

            while i < j {

                if arrayWord[i] != arrayWord[j] {
                    break
                }
                i += 1
                j -= 1

                if i >= j {
                    return word
                }
            }
        }

        return ""
    }
}
