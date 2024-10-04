import Foundation

class Solution {
    func countWords(_ words1: [String], _ words2: [String]) -> Int {
        
        //loop through words1, adding to dictionary
        // dictionary value are the number of occurences
        //do the same with words2

        // loop through words1Dict
            // whenever we encounter an entry with a value of 1
                // add to set
        // do the same with words2Dict
            

        //loop through first set, check if each element appears in second set,
            //if yes, increment result


        var dict1: [String: Int] = [:]
        var dict2: [String: Int] = [:]


        for word in words1 {
            if dict1[word] == nil {
                dict1[word] = 1
            } else {
                dict1[word]! += 1
            }
        }

        for word in words2 {
            if dict2[word] == nil {
                dict2[word] = 1
            } else {
                dict2[word]! += 1
            }
        }


        var dict1Filtered = dict1.filter{$0.value == 1}
        var dict2Filtered = dict2.filter{$0.value == 1}
        var result = 0


        print(dict1Filtered)
        print(dict2Filtered)

        for entry in dict1Filtered.keys {
            if dict2Filtered.keys.contains(entry) {
                result += 1
            }
        }

        return result

    }
}
