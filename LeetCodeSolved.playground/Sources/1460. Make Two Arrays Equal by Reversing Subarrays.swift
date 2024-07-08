import Foundation

class Solution {
    func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
        
       var arr = arr.sorted()
       var target = target.sorted()

       for i in 0..<target.count {
            if target[i] != arr[i] {
                return false
            }
       }

       return true

    }
}
