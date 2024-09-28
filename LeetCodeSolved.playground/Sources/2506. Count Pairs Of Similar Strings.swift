import Foundation

class Solution {
    func similarPairs(_ words: [String]) -> Int {
        
        // loop through words
            // loop through individual word, inserting each char into a set
            // append each set into an array
    
        // loop i
            //loop j
            // check if set[i] == set[j]



            var result = 0
            var arrOfSets: [Set<Character>] = [[]]

            for word in words {
                var uniqueChars = Set(word)
                arrOfSets.append(uniqueChars)
            }

            for i in 0..<arrOfSets.count {
                for j in i + 1..<arrOfSets.count {
                    if arrOfSets[i] == arrOfSets[j] {
                        result += 1
                    }
                }
            }

        return result

    }
}
