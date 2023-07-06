import Foundation

class Solution1282 {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        
        
        // declare dictionary Int: [Int]
        // loop through the array
        // for each element, add that element to a dictionary with the element as the key
        // add to each key until key == array.count
        // when key == array.count, add that array of values to result array
        // set value in dictionary to empty array

        var dict: [Int: [Int]] = [:]
        var result: [[Int]] = []

        for (index, num) in groupSizes.enumerated() {
            
            if dict[num] != nil {

                if dict[num]!.count < num {
                    dict[num]!.append(index)
                    print(dict, "appending to existing key")
                } else {
                    print(index, "before appending to result")
                    print(dict, "right before adding to result")
                    result.append(dict[num]!)
                    dict[num] = [index]
                }
            } else {
                dict[num] = [index]
                print(dict, "assign first value in empty key")
            }
        }

        return result

    }
}
