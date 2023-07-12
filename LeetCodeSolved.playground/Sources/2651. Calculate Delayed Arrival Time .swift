import Foundation

class Solution2651 {
    func findDelayedArrivalTime(_ arrivalTime: Int, _ delayedTime: Int) -> Int {
        
        var result: Int = arrivalTime + delayedTime

        if result >= 24 {
            result = result - 24
        }

        return result

    }
}
