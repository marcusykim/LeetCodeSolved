import Foundation

class Solution {
    func toGoatLatin(_ sentence: String) -> String {

        let vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var sentence = sentence.split(separator: " ")
        var result: [String] = []

        for (index, var word) in sentence.enumerated() {
           
            let first = String(word.first!)
            var amountOfA: String {
                var tempA: String =  ""
                for i in 0..<index + 1 {
                    tempA += "a"
                }
                return tempA
            }

            print(amountOfA)

            if vowels.contains(first) {
                word = word + "ma" + amountOfA
                result.append(String(word))
            } else {
                word.removeFirst()
                word = word + first + "ma" + amountOfA
                result.append(String(word))
            }
        }

        let goatedResult = result.joined(separator: " ")

        return goatedResult

    }
}
