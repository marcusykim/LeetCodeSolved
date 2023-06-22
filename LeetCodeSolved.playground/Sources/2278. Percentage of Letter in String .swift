import Foundation

class Solution2278 {
    func percentageLetter(_ s: String, _ letter: Character) -> Int {
        
        let sArray: [Character] = Array(s)

        let letterOnly = sArray.filter{$0 == letter}

        let letterCount = Double(letterOnly.count)
        let sCount = Double(s.count)

        let percentage = letterCount / sCount

        print(percentage)

        return Int(percentage * 100)

    }
}
