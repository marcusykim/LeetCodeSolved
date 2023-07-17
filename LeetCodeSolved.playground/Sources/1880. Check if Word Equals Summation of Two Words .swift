import Foundation

class Solution1880 {
    func isSumEqual(_ firstWord: String, _ secondWord: String, _ targetWord: String) -> Bool {
        
       

        let letters: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]

        var dict: [Character: String] = [:]

        let arrayFirst: [Character] = Array(firstWord)
        let arraySecond: [Character] = Array(secondWord)
        let arrayTarget: [Character] = Array(targetWord)

        var concatFirst: String = ""
        var concatSecond: String = ""
        var concatTarget: String = ""
        var sumFirstSecond: Int = 0

        for (index, letter) in letters.enumerated() {
            dict[letter] = String(index)
        }

        for letter in arrayFirst {
            concatFirst += dict[letter]!
        }

        for letter in arraySecond {
            concatSecond += dict[letter]!
        }

        sumFirstSecond = Int(concatFirst)! + Int(concatSecond)!


        for letter in arrayTarget {
            concatTarget += dict[letter]!
        }



        return sumFirstSecond == Int(concatTarget)!

    }
}
