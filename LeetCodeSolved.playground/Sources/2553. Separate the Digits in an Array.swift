import Foundation

class Solution2553 {
    func separateDigits(_ nums: [Int]) -> [Int] {
        
        //loop through nums
            // convert each element to string and concatenate with growing string representation

        //loop through string
            // convert each char into Int
            // append Int

        var stringNum: String = ""
        var resultArray: [Int] = []

        for num in nums {
            stringNum += String(num)
        }

        for char in stringNum {
            resultArray.append(char.wholeNumberValue!)
        }

        return resultArray

    }
}
