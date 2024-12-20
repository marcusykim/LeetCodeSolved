import Foundation

class Solution {
    func checkDistances(_ s: String, _ distance: [Int]) -> Bool {
        var lettersMap: [Character: Int] = [:]
        for (i, c) in s.enumerated() {
            if let letter = lettersMap[c] {
                lettersMap[c] = i - letter - 1
            } else {
                lettersMap[c] = i
            }
        }
        
        for letter in lettersMap {
            if letter.value != distance[Int(letter.key.asciiValue! - Character("a").asciiValue!)] {
                return false
            }
        }
        
        return true
    }
}
