import Foundation

class Solution1450 {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        
        
        var result: Int = 0

        for i in 0..<endTime.count {
            if startTime[i] <= queryTime && queryTime <= endTime[i] {
                result += 1
            }
        }


        return result
    }
}
