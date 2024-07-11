import Foundation

class Solution {
    func clearDigits(_ s: String) -> String {
        
        // what we know
            // if there is a digit and a letter, there will be at least one case where there is a digit immediately to the right of a letter

        var s = Array(s)

        var firstDigitIndex: Int = 0

        for (index, char) in s.enumerated() {
            if let num = Int(String(char)) {
                firstDigitIndex = index
                break
            } else if index == s.count - 1{
                return joinString(s)
            }
        }

        print(firstDigitIndex)


        // abcd12 .... with every loop, decrement first digit index

        while firstDigitIndex < s.count {
            s.remove(at: firstDigitIndex - 1)
            s.remove(at: firstDigitIndex - 1)

            firstDigitIndex -= 1
        }

        print(s)


        func joinString(_ s: [Character]) -> String {
            
            var temp = ""
            for char in s {
                temp.append(char)
            }

            return temp
        }

        return joinString(s)

    }
}

/*

struct Solution {
    @_optimize(speed)
    func clearDigits(_ s: String) -> String {
        var index = s.startIndex
        let endIndex = s.endIndex
        var output = ""

        while index < endIndex {
            if s[index].isWholeNumber {
                output.removeLast()
            } else {
                output.append(s[index])
            }
            index = s.index(after: index)
        }
        return output
    }
}


*/
