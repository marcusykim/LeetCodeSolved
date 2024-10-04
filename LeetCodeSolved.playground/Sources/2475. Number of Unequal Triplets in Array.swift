import Foundation

class Solution {
    func unequalTriplets(_ nums: [Int]) -> Int {
        
        // how do i even do this?

        // what do we know? I think we only need to visit each element once
        // we need to know which aren't equal.. . . . . so can we eliminate the equal ones?

        // do we just allow for cubic time complexity? brute force it?

        // how would we even brute force it

        // loop i from 0 to end
            // loop j from i + 1 to end
                // loop k from j + 1 to end
                    // if element[i] != element[j] != element[k]
                        // increase result?

        var result = 0

        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                for k in j + 1..<nums.count {
                    if nums[i] != nums[j] && nums[j] != nums[k] && nums[i] != nums[k] {
                        result += 1
                    }
                }
            }
        }


        return result

    }
}
