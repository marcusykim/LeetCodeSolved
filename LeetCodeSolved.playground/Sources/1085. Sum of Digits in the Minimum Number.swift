import Foundation

class Solution1085 {
    func sumOfDigits(_ nums: [Int]) -> Int {
        // find min
        // convert min int into string
        // loop through string, summing all digits
        // return result


        var min = nums.min()!

        var stringMin = String(min)

        var result = 0

        for char in stringMin {
            result += char.wholeNumberValue!
        }

        if result % 2 == 0 {
            return 1
        }

        return 0




    }
}
