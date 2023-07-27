import Foundation

class Solution561 {
    func arrayPairSum(_ nums: [Int]) -> Int {
    
        // we know we want to pair largest with largest
        // we can sort
        // traverse by pairs, adding each consecutive pair to tuple array

        var tupleArray: [(Int, Int)] = []

        let sortedNums: [Int] = nums.sorted().reversed()

        for i in stride(from:0, to: sortedNums.count - 1, by: 2){
            tupleArray.append((sortedNums[i], sortedNums[i + 1]))
        }

        var result: Int = 0

        print(tupleArray)

        for pair in tupleArray {
            result += min(pair.0, pair.1)
        }

        return result


    }
}
