import Foundation

class Solution {
func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
    var ans = [[Int]]()
    var groupDict = [Int: [Int]]()
    
    // Group people based on their group sizes.
    for (i, groupSize) in groupSizes.enumerated() {
        groupDict[groupSize, default: []].append(i)
    }
    
    // Create groups of the specified sizes.
    for (groupSize, groupMembers) in groupDict {
        var group = [Int]()
        
        // Split the group members into subgroups of the specified size.
        for (index, member) in groupMembers.enumerated() {
            group.append(member)
            
            if (index + 1) % groupSize == 0 {
                ans.append(group)
                group = []
            }
        }
    }
    
    return ans
}
}
