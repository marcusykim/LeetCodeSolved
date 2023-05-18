import Foundation

class Solution728 {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        // loop to create array

        var arrayOfNum: [Int] = []
        var resultArray: [Int] = []

        for i in left...right{
            arrayOfNum.append(i)
        }

        print(arrayOfNum)

        for num in arrayOfNum {
            var stringNum: String = String(num)
            var charArrayNum: [Character] = Array(stringNum)

            print(charArrayNum)
            for (index, char) in charArrayNum.enumerated() {

                if char == "0" {
                    break
                }

                if num % char.wholeNumberValue! != 0 {
                    break
                }

                if index == charArrayNum.count - 1 {
                    resultArray.append(num)
                }
            }
        }

        return resultArray
    }
}
