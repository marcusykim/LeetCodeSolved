import Foundation

class Solution2283 {
    func digitCount(_ num: String) -> Bool {
        
        // dict = int: [int]

        // loop
            // if dict[element] is not empty, append to array
        //

        // loop, enumerated
            // is index == dict[element].count?
                // no, return false

        //return true

        var arrayNum = Array(num)


        var dict: [Int: Int] = [:]

        for charDigit in arrayNum {
            var digit = charDigit.wholeNumberValue!

            if dict[digit] != nil {
                dict[digit]! += 1
            } else {
                dict[digit] = 1
            }
        }

        print(dict)

        for (index, charDigit) in arrayNum.enumerated() {
            var digit = charDigit.wholeNumberValue!

            if index != dict[digit]{
                return false
            }

        }

        
        return true


    }
}
