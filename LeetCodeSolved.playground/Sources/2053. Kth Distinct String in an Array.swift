import Foundation

class Solution {
    func kthDistinct(_ arr: [String], _ k: Int) -> String {
        // use dictionary of tuples, first value in tuple is the frequency, the second value is the index
        // create a new array of only those with frequency one, then sort ascending by index
        // return kth string

        var dict: [String: (Int, Int)] = [:]
        var frequencyOneDict: [String: (Int, Int)] = [:]

        for (index, string) in arr.enumerated() {
            if dict[string] == nil {
                dict[string] = (1, index)
            } else {
                dict[string] = (dict[string]!.0 + 1, index)
                
            }

            //print(dict)
        }

        for element in dict {
            if element.value.0 == 1 {
                frequencyOneDict[element.key] = element.value
            }
        }

        //print(frequencyOneDict)

        var sortedFrequencyArrayByIndex = frequencyOneDict.sorted{$0.value.1 < $1.value.1 }

        print(sortedFrequencyArrayByIndex)

        // for element in sortedFrequencyArrayByIndex {
        //     print(element)
        // }

        let kthString = sortedFrequencyArrayByIndex[1]

        return "a"


    }
}
