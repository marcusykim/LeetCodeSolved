import Foundation

class Solution1085 {
    func sumOfDigits(_ nums: [Int]) -> Int {
     

        let min = nums.min()!

        let stringMin = String(min)

        let result = 0

        for char in stringMin {
            result += char.wholeNumberValue!
        }

        if result % 2 == 0 {
            return 1
        }

        return 0




    }
}
