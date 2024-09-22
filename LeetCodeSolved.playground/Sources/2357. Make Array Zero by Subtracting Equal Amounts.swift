import Foundation

class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        for i in nums{
            if i > 0{
                set.insert(i)
            }
        }
        return set.count
    }
}
