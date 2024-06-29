import Foundation

class Solution {
    func countSymmetricIntegers(_ low: Int, _ high: Int) -> Int {
    var sum = 0
    
    for i in low...high {
        let str = "\(i)"
        if str.count % 2 == 0 {
            let middle = str.count / 2
            var half1 = 0
            var half2 = 0
            for num in str.prefix(middle) {
                half1 += Int("\(num)")!
            }
            for num in str.suffix(middle) {
                half2 += Int("\(num)")!
            }
            sum += half1 == half2 ? 1 : 0
        }
    }
    
    return sum
}
}
