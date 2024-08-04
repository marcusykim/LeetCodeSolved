import Foundation

class Solution {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        
        var goldMedal = "Gold Medal"
        var silverMedal = "Silver Medal"
        var bronzeMedal = "Bronze Medal"

        // save all scores into dict as values, with indexes as keys

        // repeatedly find and remove max dict entry as we input ranks and at the correct index in a result array

        var dict: [Int: Int] = [:]

        for (index, studentScore) in score.enumerated() {
            dict[index] = studentScore
        }

        var result: [String] = Array(repeating: "", count: score.count)

    for i in 1...score.count {
        if let maxEntry = dict.max(by: { a, b in a.value < b.value }) {

            switch i {
                case 1:
                    result[maxEntry.key] = goldMedal
                case 2:
                    result[maxEntry.key] = silverMedal
                case 3:
                    result[maxEntry.key] = bronzeMedal
                default:
                    result[maxEntry.key] = String(i)
            }

            

            dict.removeValue(forKey: maxEntry.key)
        }
    }

    return result
    }
}
