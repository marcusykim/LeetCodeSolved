import Foundation

class Solution2788 {
    func splitWordsBySeparator(_ words: [String], _ separator: Character) -> [String] {
        //loop through words
        // for each string
            //components(separatedBy:)
            // this splits into an array of string
            // result array += new array

        var result: [String] = []

        for word in words {
            let splitWord = word.components(separatedBy: "\(separator)")

            let filteredWord = splitWord.filter {$0 != ""}

            result = result + filteredWord

        }

        return result
    }
}
