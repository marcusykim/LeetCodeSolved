import Foundation

class Solution {
    func kthCharacter(_ k: Int) -> Character {
        var s = [0]
        while s.count < k {
            s += s.map{$0+1}
        }
        return Character(UnicodeScalar(s[k-1] % 26 + 97)!)
    }
}
