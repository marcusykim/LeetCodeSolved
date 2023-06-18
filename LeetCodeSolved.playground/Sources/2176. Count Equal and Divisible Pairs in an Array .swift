import Foundation

class Solution2176 {
    func countPairs(_ nums: [Int], _ k: Int) -> Int {
        //nested loops
        // enumerate both loops
        // outer loop is trailing number
            // inner loop
            // whenever element in outer loop matches element in inner loop
                // multiply the indices
                // check if divisible by 2
                // if yes
                    // increment result

        var result: Int = 0

        for i in 0..<nums.count {
            let backStop: Int = i + 1

            for j in backStop..<nums.count {
                if nums[i] == nums[j] {

                    //print(outerNum, innerNum)
                    
                    var product: Int = i * j
                    if product % k == 0 {
                        result += 1
                    }
                }
            }
        }


        return result
    }
}
