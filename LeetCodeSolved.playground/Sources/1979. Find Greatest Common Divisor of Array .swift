import Foundation

class Solution1979 {
    func findGCD(_ nums: [Int]) -> Int {
        
        // find min
        // find max
        // if max % min == 0, we know that largest divisor is min
        // otherwise, loop backward from min and keep dividing until both are divisible

        let min = nums.min()!
        let max = nums.max()!

        if max % min == 0 {
            return min
        }

        for i in 1..<min {
            let j = min - i

            if max % j == 0 && min % j == 0 {
                return j
            }
        }

        return 1

    }
}
