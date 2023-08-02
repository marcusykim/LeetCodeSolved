import Foundation

class Solution2798 {
    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
        
        var result: Int = 0

        for employeeHours in hours {
            if employeeHours >= target {
                result += 1
            }
        }

        return result

    }
}
