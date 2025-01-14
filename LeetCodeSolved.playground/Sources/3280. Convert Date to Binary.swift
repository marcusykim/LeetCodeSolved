import Foundation

class Solution {
    func convertDateToBinary(_ date: String) -> String {
        
        // just use radix?

        var date = date

        var dateArray = date.split(separator: "-")

        print(dateArray)

        var binaryTempArray: [String] = []

        for num in dateArray {
            binaryTempArray.append(String(Int(num)!, radix: 2))
        }

        print(binaryTempArray)

        return binaryTempArray.joined(separator: "-")

    }
}
