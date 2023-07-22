import Foundation

class Solution2225 {
    func findWinners(_ matches: [[Int]]) -> [[Int]] {
        
        // create set
            // loop
            // add each match[1] to set
            
        // loop again,
            // attempt to add each match[0]
            // wherever we can add, include that in answer[0]

        // create dict Int: ["L"]

        // loop
            // add each match[0] to dictionary
            // if not nil, append "L"


        // use reduce to grab all where dict[match[1]].count == 1


        var set: Set<Int> = []

        var result: [[Int]] = []

        for match in matches {
            set.insert(match[1])
        }

        print("after initial set loop")


        for match in matches {
            if !set.contains(match[0]) {
                result[0].append(match[0])
            }

        }

        var dict: [Int: [Int]] = [:]

        for match in matches {
            dict[match[0]] = []
        }

        print("after initial dict loop")

        for match in matches {
                dict[match[0]]!.append(match[1])
        }

        return [[]]

    }
}
