import Foundation

class Solution2000 {
    func reversePrefix(_ word: String, _ ch: Character) -> String {
        
        // convert word into character array
        // loop through word until ch is found
            // with each element during loop
            // append into new array
        //reverse new array
        //loop through new array
            // replace each element in original array with element from new array

            var wordArray: [Character] = Array(word)
            var tempReverseArray: [Character] = []

            for (index, char) in wordArray.enumerated() {
                
                tempReverseArray.append(char)

                if char == ch {
                    break
                }

                if index == wordArray.count - 1 {
                    return String(wordArray)
                }
            }

            tempReverseArray.reverse()

            print(tempReverseArray)

            for (index, char) in tempReverseArray.enumerated() {
                wordArray[index] = char
            }

        return String(wordArray)

    }
}
