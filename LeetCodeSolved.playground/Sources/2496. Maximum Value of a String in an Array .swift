import Foundation

class Solution2496 {
    func maximumValue(_ strs: [String]) -> Int {
        
        // loop
        // use optional binding to check if a string can be converted to an int
        // if yes, convert, then compare to current max
        // if no, compare count to current max

        var max: Int = -1

        for string in strs {
            if let num = Int(string) {
                if num > max {
                    max = num
                }
            } else {
                if string.count > max {
                    max = string.count
                }
            }
        }

        return max

    }
}
