import Foundation

class Solution {
    func minElement(_ nums: [Int]) -> Int {

        // convert all elements in num to string
        //split each string, resulting in digits
        //add each digit as we convert them to Ints
        // replace original element with sum of digits

        var nums = nums

        var stringNums = nums.map{String($0)}

        for (index, stringNum) in stringNums.enumerated() {
            var tempDigitArray = stringNum.split(separator: "")
            var sum = 0

            for num in tempDigitArray {
                sum += Int(num)!
            }

            nums[index] = sum
        }

        return nums.min()!

    }
}
