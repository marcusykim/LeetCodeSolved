class Solution1323 {
    func maximum69Number (_ num: Int) -> Int {
        
        var stringNum = String(num)

        var arrayNum = Array(stringNum)

        print(arrayNum)

        var tempResultString = ""

        var numAlreadySwitched = false

        for (index, char) in arrayNum.enumerated() {
            
            if char == "6" && numAlreadySwitched == false {
                //arrayNum.remove(at: index)
                arrayNum.insert("9", at: index)

                numAlreadySwitched = true

                tempResultString += String(arrayNum[index])

            } else {
                tempResultString += String(char)

               print(tempResultString)
            }

            

        }

        return Int(tempResultString)!

    }
}
