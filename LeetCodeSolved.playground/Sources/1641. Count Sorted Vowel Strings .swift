import Foundation

class Solution1641 {
    func countVowelStrings(_ n: Int) -> Int {
        
        // find permutations
        return (n + 4) * (n + 3) * (n + 2) * (n + 1) / 24
    }
}
