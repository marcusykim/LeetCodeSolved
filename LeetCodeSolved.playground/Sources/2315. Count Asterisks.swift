import Foundation

class Solution2315 {
    func countAsterisks(_ s: String) -> Int {
        // loop through string until we find a |
        // keep track of all the asterisks until we find the second |
        // when we the find the next |
        // add all the * seen so far into the result

        var arrayS: [Character] = Array(s)

        var foundFirst: Bool = false
        var foundSecond: Bool = false

        var tempCounter: Int = 0
        var result: Int = 0

        for char in arrayS {
            
            print("char: ", char)

            if char == "|" && foundFirst == false {
                print("inside if")
                foundFirst = true
            } else if char == "|" && foundFirst == true && foundSecond == false {
                print("inside first else if")
                foundSecond = true
            } else if char == "|" && foundFirst == true && foundSecond == true {
                print("inside second else if")
                result += tempCounter
                tempCounter = 0
                foundFirst = false
                foundSecond = false
            } else if char == "*" && foundFirst == false && foundSecond == false {
                print("inside third else if")
                tempCounter += 1
            } else if char == "*" && foundFirst == true && foundSecond == true {
                print("inside fourth else if")
                tempCounter += 1
            }
        }


        return result
    }
}
