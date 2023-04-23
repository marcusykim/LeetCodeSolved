import Foundation

class Solution258 {
    func addDigits(_ num: Int) -> Int {
        // make a result variable

        // transform num into string
        // string to array
        // add each element in array
        // repeat

        var stringNum = String(num)

        var arrayCharNum = Array(stringNum)
        var arrayIntNum: [Int] = []

        var result = num

        ///---------------




        while arrayCharNum.count > 1 {
            for digit in arrayCharNum {
                 arrayIntNum.append(digit.wholeNumberValue!)
            }

            result = arrayIntNum.reduce(0, +)

            stringNum = String(result)

            arrayCharNum = Array(stringNum)

            arrayIntNum = []

        }

        //use while loop that keeps going until count is 0


        return result
    }
}
