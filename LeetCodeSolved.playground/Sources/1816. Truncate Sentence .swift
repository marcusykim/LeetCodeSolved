import Foundation

class Solution1816 {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        
        let sArray = s.components(separatedBy: " ")

        var tempArray: [String] = []

        for (index, word) in sArray.enumerated() {
            
            if index == k {
                tempArray.removeLast()
                break
            }
            tempArray.append(word)
            tempArray.append(" ")
        }

        if k == sArray.count {
            tempArray.removeLast()
        }

        var result: String = ""



        for word in tempArray {
            result += word
        }

        return result

    }
}
