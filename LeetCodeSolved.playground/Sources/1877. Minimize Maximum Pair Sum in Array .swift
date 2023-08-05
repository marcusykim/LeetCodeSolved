import Foundation

class Solution1877 {
    func minPairSum(_ nums: [Int]) -> Int {
        
        var sortedNums: [Int] = nums.sorted()

        var firstHalf = sortedNums[0...sortedNums.count / 2 - 1 ]
        var secondHalf = sortedNums[sortedNums.count / 2...sortedNums.count - 1]

        var reversedSecondHalf = Array(secondHalf.reversed())

        var summedArray: [Int] = []

        for (index, num) in firstHalf.enumerated() {
            summedArray.append(num + reversedSecondHalf[index])
        }

        

        return summedArray.max()!

    }
}
