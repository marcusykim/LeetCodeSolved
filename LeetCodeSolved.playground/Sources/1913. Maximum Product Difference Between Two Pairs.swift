import Foundation

class Solution1913 {
    func maxProductDifference(_ nums: [Int]) -> Int {
        
        var muteNums: [Int] = nums

        muteNums.sort()

        // this is where I grab the last two elements
        // so I can use muteNums.last and muteNums[muteNums.count - 1]
        //this is where I grab the first two elements
        // so I can use muteNums.first and muteNums[1]
        // I have to return the difference between the products of these pairs

        var firstOfFirstPair = muteNums[muteNums.count - 2]
        var secondOfFirstPair = muteNums.last!
        var firstOfSecondPair = muteNums.first!
        var secondOfSecondPair = muteNums[1]

        return (firstOfFirstPair * secondOfFirstPair) - (firstOfSecondPair * secondOfSecondPair)
    }
}
