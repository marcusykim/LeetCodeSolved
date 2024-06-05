import Foundation

class Solution {
    func totalMoney(_ n: Int) -> Int {
        

        // monday dollar tracker
        // day tracker
        //while loop monday dollar
            // for loop from monday dollar to monday dollar + 7
                // add money
                // increment day tracker


        var contributionDays = 1
        var mondayBaseline = 1
        var result = 0



        while true {

            for contribution in mondayBaseline...(mondayBaseline + 6) {
                result += contribution
                if contributionDays == n {
                    return result
                }
                contributionDays += 1
            }

            mondayBaseline += 1

        }

        





    }
}
