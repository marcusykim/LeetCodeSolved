import Foundation

class Solution {
    func findComplement(_ num: Int) -> Int {
        var strNum = String(num, radix: 2)

        print(strNum)

        var result: Int {
            var arrNum = Array(strNum)
            var invertedArrNum: [String] = []
            
            var tempResult = 0
            for digit in arrNum {
                if digit == "1" {
                    invertedArrNum.append("1")
                } else {
                    invertedArrNum.append("0")
                }
            }

            for digit in invertedArrNum {
                if Int(digit) == 1 {
                    tempResult += 1
                }
            }

            return tempResult
        }


        return result

    }
}
