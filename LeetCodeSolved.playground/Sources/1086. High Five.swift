import Foundation

class Solution1086 {
    func highFive(_ items: [[Int]]) -> [[Int]] {
        
        var dict: [Int: [Int]] = [:]

        for student in items {
            let id = student[0]
            //print(id)
            let score = student[1]
            //print(score)
            if dict[id] != nil {
                dict[id]!.append(score)
            } else {
                dict[id] = [score]
            }

            //print(dict)

        }

       let sortedStudents = dict.sorted { $0.0 < $1.0 }
        var result: [[Int]] = []

        print(sortedStudents)

        for student in sortedStudents {
            let id = student.0
            let scores = student.1
            let sortedScores = scores.sorted(by: >)
            let sortedScoresSubarray = Array(sortedScores[0...4])
            let scoreSum = sortedScoresSubarray.reduce(0, +)
            print(scoreSum)
            let count = sortedScoresSubarray.count

            print(count )
            let average = Double(scoreSum) / Double(count)

            print (average)

            result.append([id, Int(average)])

        }


        return result

    }
}
