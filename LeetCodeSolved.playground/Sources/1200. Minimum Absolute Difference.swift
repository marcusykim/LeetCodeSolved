import Foundation

class Solution {
    func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
        
        //sort
        // iterate over sorted arr
            // with each loop, check abs val of (i + 1) - i
            // keep track of lowest difference by updating `minDiff`


        // iterate again
            // with each loop, check if abs val of (i + 1) - i == `minDiff`
            // if yes, append to array of arrays


        var minDiff = 100000000
        var result: [[Int]] = []
        let arr = arr.sorted()

        for i in 0..<arr.count - 1 {

            let currentMin = abs(arr[i + 1] - arr[i])

            if currentMin < minDiff {
                minDiff = currentMin
            }
        }

        print(minDiff)

        for i in 0..<arr.count - 1 {
            let currentMin = abs(arr[i + 1] - arr[i])

            if currentMin == minDiff {
                result.append([arr[i], arr[i + 1]])
            }
        }

        return result

    }
}
