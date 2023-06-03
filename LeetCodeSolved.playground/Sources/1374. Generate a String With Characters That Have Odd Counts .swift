import Foundation

class Solution1374 {
    func generateTheString(_ n: Int) -> String {
        
        // check if n is even
            // if even loop n - 1 times, then append a single different character

        // check if n is odd
            // if odd loop n times, appending the same character each time

            var result: String = ""

            if n % 2 == 0 {
                 for _ in 1...n - 1 {
                     result += "a"
                 }

                 result += "b"
            } else {
                for _ in 1...n {
                    result += "a"
                }
            }


            return result

    }
}
