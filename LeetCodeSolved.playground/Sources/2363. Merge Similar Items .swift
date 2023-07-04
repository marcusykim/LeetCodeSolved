import Foundation

class Solution2363 {
    func mergeSimilarItems(_ items1: [[Int]], _ items2: [[Int]]) -> [[Int]] {
        
        // create a dictionary with arrays as values
        // loop through items1 and items2, adding weights corresponding to each item
        // when finding a matching item between items1 and items2,
            //appending to array
        var arrayWithGreaterCount: [[Int]]
        var arrayWithLesserCount: [[Int]]
        var dict: [Int: [Int]] = [:]

        if items1.count >= items2.count {
            arrayWithGreaterCount = items1
            arrayWithLesserCount = items2
        } else {
            arrayWithGreaterCount = items2
            arrayWithLesserCount = items1
        }

        //print("\(arrayWithGreaterCount) ****** \(arrayWithLesserCount)")

        for (index, itemFromGreater) in arrayWithGreaterCount.enumerated() {
            
            let itemIDFromGreater = itemFromGreater[0]
            let weightFromGreater = itemFromGreater[1]

            dict[itemIDFromGreater] = [weightFromGreater]

            var itemIDFromLesser: Int
            var weightFromLesser: Int
            if index < arrayWithLesserCount.count {
                itemIDFromLesser = arrayWithLesserCount[index][0]
                weightFromLesser = arrayWithLesserCount[index][1]

                if dict[itemIDFromLesser] != nil {
                dict[itemIDFromLesser]! += dict[itemIDFromLesser]

                print(dict[itemIDFromLesser])
            } else {
                dict[itemIDFromLesser] = [weightFromLesser]
            }
            }

            

            



        }

        //print(dict)

        return []

    }
}
