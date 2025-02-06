import Foundation

class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        
        var array: [Int] = []

        var i = 0

        while i < n {
            array.append(start + 2 * i)
            i += 1
        }

        print(array)

        var result = array.reduce(0){$0 ^ $1}

        return result

    }
}
