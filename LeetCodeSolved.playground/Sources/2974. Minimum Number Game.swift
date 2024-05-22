import Foundation

class Solution {
    func numberGame(_ nums: [Int]) -> [Int] {
        
        // loop
            // remove remove
            // append in opposite order

        var nums = nums

        var result: [Int] = []

        while nums.count > 0 {
            var aliceMinRemoval = nums.min()
            nums.remove(at: nums.index(of: aliceMinRemoval!)!)
            var bobMinRemoval = nums.min()
            nums.remove(at: nums.index(of: bobMinRemoval!)!)

            result.append(bobMinRemoval!)
            result.append(aliceMinRemoval!)

        }




        return result

    }
}
