import Foundation

class Solution1768 {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {

        var resultString: String = ""

        let word1Array: [Character] = Array(word1)
        let word2Array: [Character] = Array(word2)

        var i: Int = 0
        var j: Int = 0

        while i < word1.count || j < word2.count {
            if i < word1.count {
                resultString += String(word1Array[i])
            }

            if j < word2.count {
                resultString += String(word2Array[j])
            }

            i += 1
            j += 1
        }

        return resultString
    }
}
