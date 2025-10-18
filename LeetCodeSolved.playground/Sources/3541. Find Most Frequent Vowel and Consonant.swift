class Solution {
    func maxFreqSum(_ s: String) -> Int {
        
        // loop through
            // with each iteration, use contains to see if letter is in vowels or consonants
            // if vowel, add letter to vowels dictionary as key with value as the frequency, increment frequency
            // same with consonants

        var vowelDict: [Character: Int] = [:]
        var consDict: [Character: Int] = [:]
        let vowels: [Character] = ["a", "e", "i", "o", "u"]

        for letter in s {
            if vowels.contains(letter) {
                if vowelDict[letter] != nil {
                    vowelDict[letter]! += 1
                } else {
                    vowelDict[letter] = 1
                }
            } else {
                if consDict[letter] != nil {
                    consDict[letter]! += 1
                } else {
                    consDict[letter] = 1
                }
            }
        }

        var vowelMax = 0
        var consMax = 0

        if let max = vowelDict.values.max() {
            vowelMax = max
        }

        if let max = consDict.values.max() {
            consMax = max
        }

        return vowelMax + consMax

    }
}
