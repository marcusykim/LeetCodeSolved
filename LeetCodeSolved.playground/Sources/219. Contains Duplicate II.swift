class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        
        for i in 0..<nums.count {
            for j in (i + 1)..<nums.count {
                if nums[i] == nums[j] {
                    if abs(i - j) <= k {
                        return true
                    }
                }
            }
        }

        return false


    }
}
