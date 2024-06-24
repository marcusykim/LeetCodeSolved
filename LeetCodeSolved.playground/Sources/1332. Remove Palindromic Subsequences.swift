import Foundation

class Solution {
    func removePalindromeSub(_ s: String) -> Int {
        
        if s == String(s.reversed()) {
            return 1
        }

        return 2

    }
}
