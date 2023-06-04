import Foundation

class Solution2185 {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
        
        var result = 0

        // find the count of the pref
        // create substring of a given word by using index equal to count
        //compare strings

        for word in words {
            
            if pref.count > word.count {
                continue
            }

            let start = word.index(word.startIndex, offsetBy: 0)
            let end = word.index(word.startIndex, offsetBy: pref.count - 1)
            let substring = word[start...end]

            print(substring)

            if substring == pref {
                result += 1
            }
        }

        return result

    }
}
