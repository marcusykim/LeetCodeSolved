import Foundation

class Solution3 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        
        // If it's an a empty String or if there's only one element, return the count
        if s.count == 0 || s.count == 1 {
            return s.count
        }

        var maxCount = 0
        var currentSubstring = [Character]()
        var charArray = Array(s)
        currentSubstring.append(charArray[0])

        for i in 1..<charArray.count {

            // if the ith element of the charArray exists in the currentSubstring, get the index of that char as it is in the currentSubstring
            if let index = currentSubstring.firstIndex(of: charArray[i]) {
                
                // remove everything from the beginning up to, and including, the found element from the currentSubstring
                currentSubstring.removeFirst(index + 1)
            }

            currentSubstring.append(charArray[i]) // add the ith element to the currentSubstring


            maxCount = max(maxCount, currentSubstring.count) // compare last known max to count of currentSubstring

        }


        return maxCount
    }
}
