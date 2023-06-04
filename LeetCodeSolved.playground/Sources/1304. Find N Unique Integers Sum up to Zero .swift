import Foundation

class Solution1304 {
    func sumZero(_ n: Int) -> [Int] {
        
        // if n is even, return an array contain a prefix that the is opposite of its suffix, e.g.  [-2, -1, 1, 2]

        // if n is odd, return and array containing the same array as if n were even except with a zero

        var result: [Int] = []

        if n % 2 == 0 {
            for i in 1...(n / 2) {
                result.append(i)
                result.append(i * -1)
            }
        } else {

            result.append(0)
            
            for i in 1..<((n / 2) + 1) {
                result.append(i)
                result.append(i * -1)
            }
        }

        
        return result

    }
}
