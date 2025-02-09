import Foundation

class Solution {
    func isBalanced(_ num: String) -> Bool {
        
        var numArray = Array(num)
        var oddNumArray: [Character] = []
        var evenNumArray: [Character] = []

        for (index, num) in numArray.enumerated() {
            if index % 2 != 0 {
                oddNumArray.append(num)
            } else {
                evenNumArray.append(num)
            }
        }

        var oddIndexSum = 0
        var evenIndexSum = 0

        for num in oddNumArray {
            oddIndexSum += num.wholeNumberValue!
        }

        for num in evenNumArray {
            evenIndexSum += num.wholeNumberValue!
        }

        return evenIndexSum == oddIndexSum

    }
}
