import Foundation

class Solution2710 {
    func removeTrailingZeros(_ num: String) -> String {
        
        var numReversedArray = Array(String(num.reversed()))

        print(numReversedArray)

        var numberOfLeadingZeros = 0

        for char in numReversedArray {
            if char == "0" {

                print(char)
                numberOfLeadingZeros += 1
                print(numberOfLeadingZeros)
            } else {
                break
            }
        }

        numReversedArray.removeFirst(numberOfLeadingZeros)

        

        return String(numReversedArray.reversed())

    }
}
