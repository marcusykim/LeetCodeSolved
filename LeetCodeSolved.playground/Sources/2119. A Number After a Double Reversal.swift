import Foundation

class Solution2119 {
    func isSameAfterReversals(_ num: Int) -> Bool {
        
        var stringNum: String = String(num)
        var reversed1: String = String(stringNum.reversed())
        var reversed1Int: Int = Int(reversed1)!
        var reversed1String: String = String(reversed1Int)
        var reversed2String: String = String(reversed1String.reversed())
        var reversed2Int: Int = Int(reversed2String)!

        print(reversed2Int)
   
        return reversed2Int == num

    }
}
