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

        

        // var arrayNum = Array(num)

        // if arrayNum.count == 1 {
        //     if arrayNum[0].wholeNumberValue! != 0 {
        //         return false
        //     }
        // }

        // var dict: [Int: [Int]] = [:]

        // for charDigit in arrayNum {
        //     var digit = charDigit.wholeNumberValue!

        //     if dict[digit] != nil {
        //         dict[digit]!.append(digit)
        //     } else {
        //         dict[digit] = [digit]
        //     }
        // }

        // print(dict)

        // for (index, charDigit) in arrayNum.enumerated() {
        //     var digit = charDigit.wholeNumberValue!

        //     print(index)

        //     if dict[index] == nil {
        //         continue
        //     }

        //     if digit != dict[index]!.count {
        //         return false
        //     }

        // }

        
        // return true

        for (index, value) in num.enumerated() {
            var check = 0

            for i in num {
                if String(i) == String(index) {
                    check += 1
                }
            }

            if String(check) != String(value) {
                return false
            }
        }

        return true
    }
}
