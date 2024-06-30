import Foundation

class Solution {
    func canBeTypedWords(_ text: String, _ brokenLetters: String) -> Int {
        
        // cast text into separate arrays for each word
        // save the arrays into an array of arrays
        // cast broken letters into array

        // loop over array of arrays
            // loop over array of brokenletters
            // if an array contains any char from brokenLetters, remove the entire array

        //return count of arrays in array of arrays

        var splitWord = text.split(separator: " ")

        var wordsArray = Array(splitWord)
        var arrayOfCharArrays: [[Character]] = []
        var brokenLettersArray = Array(brokenLetters)
        var result = 0

        for word in wordsArray {
            arrayOfCharArrays.append(Array(word))

        }

        for (wordIndex, word) in arrayOfCharArrays.enumerated() {
            for (index, char) in brokenLettersArray.enumerated() {
                if word.contains(char) {
                   break
                } else if index == brokenLettersArray.count - 1{
                    result += 1
                }
            }
        }

        return result
    }
}
