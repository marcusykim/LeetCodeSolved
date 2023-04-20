import Foundation

class Solution1967 {
    func numOfStrings(_ patterns: [String], _ word: String) -> Int {
        
        var result: Int = 0

        for pattern in patterns {
            if word.contains(pattern){
                result += 1
            }
        }

    return result

    }
}
