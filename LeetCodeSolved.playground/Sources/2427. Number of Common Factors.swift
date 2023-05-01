import Foundation

class Solution2427 {
    func commonFactors(_ a: Int, _ b: Int) -> Int {
        
        var result: Int = 0

        for factor in 1...max(a, b) {
            if a % factor == 0 && b % factor == 0 {
                result += 1
            }
        }

        return result
    }
}
