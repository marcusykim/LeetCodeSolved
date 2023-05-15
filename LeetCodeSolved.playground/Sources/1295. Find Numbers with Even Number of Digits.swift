import Foundation

class Solution1295 {
    func findNumbers(_ nums: [Int]) -> Int {
        // convert each integer into string by looping

        // within the same loop, taking element.count % 2

        var result = 0

        for num in nums {
            var stringNum = String(num)

            if stringNum.count % 2 == 0 {
                result += 1
            }

        }


        return result

    }
}
