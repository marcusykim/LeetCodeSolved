import Foundation

class Solution {
    func frequencySort(_ nums: [Int]) -> [Int] {

     var dict: [Int: Int] = [:]

     for num in nums {
        if dict[num] == nil {
            dict[num] = 1
        } else {
            dict[num]! = dict[num]! + 1
        }
     }


     var sortedByValue = dict.sorted{$0.value < $1.value}

    sortedByValue.sort {
    if $0.value == $1.value {
            return $0.key > $1.key
        } else {
            return $0.value < $1.value
        }
    }

     print(sortedByValue)

     var result: [Int] = []

     for num in sortedByValue {
        for multiplier in 1...num.1 {
            result.append(num.0)
        }
     }

     return result

    }
}
