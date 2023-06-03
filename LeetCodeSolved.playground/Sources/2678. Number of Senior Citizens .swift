import Foundation

class Solution2678 {
    func countSeniors(_ details: [String]) -> Int {
        
        var result = 0

        for person in details {
            let start = person.index(person.startIndex, offsetBy: 11)
            let end = person.index(person.endIndex, offsetBy: -2)
            let range = start..<end
            let age = Int(person[range])
            if age! > 60 {
                result += 1
            }

        }



        return result

    }
}
