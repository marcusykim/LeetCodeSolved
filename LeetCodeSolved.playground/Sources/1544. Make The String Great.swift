import Foundation

class Solution {
    func makeGood(_ s: String) -> String {

        if s.count == 1 {
            return s
        }

        var sArray = Array(s)
        // make note of count
        // loop, tracking s[i] and s[i + 1]
            // i isuppercased && i + 1 islowercased
                // if i uppercased
                    // i.lowercased()
                    // else if i lowercased
                    // i.uppercased
                    // if i == i + 1, remove both
            // i islowercased && i + 1 isuppercased
                // i.lowercased()
                    // else if i lowercased
                    // i.uppercased
                    // if i == i + 1, remove both

            // make note of count
            // return string if count is the same as previous count

        var lastCount = sArray.count
        var currentCount = 0
        var i = 0

        while currentCount != lastCount {
            var currentCount = lastCount
            var firstLetter = sArray[i]
            var secondLetter = sArray[i + 1]

            print(firstLetter)
            print(secondLetter)

            if firstLetter.isLowercase && secondLetter.isUppercase {
                var firstUppercased = sArray[i].uppercased()
                var second = sArray[i + 1]

                if firstUppercased == String(second) {
                    sArray.remove(at: i)
                    sArray.remove(at: i)
                    currentCount = sArray.count
                }
            } else if firstLetter.isUppercase && secondLetter.isLowercase {
                var first = sArray[i]
                var secondUppercased = sArray[i + 1].uppercased()

                if String(first) == secondUppercased {
                    sArray.remove(at: i)
                    sArray.remove(at: i)
                    currentCount = sArray.count
                }
            }

            if currentCount == lastCount {
                return String(sArray)
            } else {
                
            }



            i += 1
        }

        return String(sArray)


    }
}
