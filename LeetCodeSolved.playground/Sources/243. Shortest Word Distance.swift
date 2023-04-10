import Foundation

class Solution243 {
    func shortestDistance(_ wordsDict: [String], _ word1: String, _ word2: String) -> Int {
        
        var dist1: Int?
        var dist2: Int?
        var minDist: Int = Int.max
        for i in 0..<wordsDict.count {
            if wordsDict[i] == word1 {
                dist1 = i
            } else if wordsDict[i] == word2 {
                dist2 = i
            }

            if let d1 = dist1, let d2 = dist2 {
                minDist = min(abs(d1 - d2), minDist)
            }
            
        }

        return minDist

    }
}
