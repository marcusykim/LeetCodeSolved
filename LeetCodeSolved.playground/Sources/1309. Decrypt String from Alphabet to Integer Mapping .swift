import Foundation

class Solution1309 {
    func freqAlphabets(_ s: String) -> String {
        
        //iterate through string
            // for each element, take the integer and map
        // whenever a pound is found, grab the last two integers, delete the most recently mapped letter, then map
        
        let dict: [String: String] = ["1": "a", "2": "b", "3": "c", "4": "d", "5": "e", "6": "f", "7": "g", "8": "h", "9": "i", "10#": "j", "11#": "k", "12#": "l", "13#": "m", "14#": "n", "15#": "o", "16#": "p", "17#": "q", "18#": "r", "19#": "s", "20#": "t", "21#": "u", "22#": "v", "23#": "w", "24#": "x", "25#": "y", "26#": "z"]

        var result: String = ""

        var s: [Character] = Array(s)

        for (index, num) in s.enumerated() {

            //print(num)
            if num == "0" {
                continue
            } else if num == "#" {

                 var compoundNum: String = String(s[index - 2]) + String(s[index - 1]) + String(num)

                 let compoundNumVal: String = dict[String(compoundNum)]!

                if result.count < 2 {
                    result.removeLast()
                } else if result.count >= 3 {
                    if s[index - 3] == "9" {
                    result.removeLast()
                    }
                } else {
                    result.removeLast()
                    result.removeLast()
                }
                
               
                
                result += dict[compoundNum]!
            } else {
                
                var numValue = dict[String(num)]

                result += numValue!
                print(num, result)
            }

        }


        return result
    }
}
