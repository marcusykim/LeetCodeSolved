import Foundation

class Solution2418 {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        
        var tempTupleArray: [(String, Int)] = []
        var resultArray: [String] = []

        for i in 0..<names.count {
            tempTupleArray.append((names[i], heights[i]))
        }

        let sortedTupleArray = tempTupleArray.sorted {

            $0.1 > $1.1

        }

        for person in sortedTupleArray {
            resultArray.append(person.0)
        }

        return resultArray

    }
}
