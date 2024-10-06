import Foundation

class Solution {
    func largestGoodInteger(_ num: String) -> String {
        
        // loop
            // check equality of num[i] == num[i + 1] == num[i + 2]

        var arrNum = Array(num)

        var arrIntNum = arrNum.map{$0.wholeNumberValue!}

        print(arrIntNum)

        var max = 0

        for i in 0..<arrIntNum.count - 2{

            var concatenatedTripleString: String = "000"

            if Int(arrIntNum[i]) == Int(arrIntNum[i + 1]) && Int(arrIntNum[i + 1]) == Int(arrIntNum[i + 2]) {
                concatenatedTripleString = String(arrIntNum[i]) + String(arrIntNum[i + 1]) + String(arrIntNum[i + 2])

                print(concatenatedTripleString)

                var concatenatedTripleInt = Int(concatenatedTripleString)!
                if  concatenatedTripleInt > max {
                    max = concatenatedTripleInt
                }
            }



            if i == arrIntNum.count - 3 && max != 0 {
                return String(max)
            } else if {
                i == arrIntNum.count - 3 && Int(concatenatedTripleString)! == 0 {
                return "000"
            }

            
        }

        return ""

    }
}
