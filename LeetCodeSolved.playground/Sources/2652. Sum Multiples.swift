import Foundation

class Solution2652 {
    func sumOfMultiples(_ n: Int) -> Int {
        
        // loop n times

        var sum = 0

        for i in 1...n {
            if i % 3 == 0 || i % 5 == 0 || i % 7 == 0 {
                sum += i
            }
        }


        return sum

    }
}
