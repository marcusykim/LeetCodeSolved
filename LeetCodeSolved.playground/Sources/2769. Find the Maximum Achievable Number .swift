import Foundation

class Solution2769 {
    func theMaximumAchievableX(_ num: Int, _ t: Int) -> Int {

        var num: Int = num
        var initial: Int = num + (t * 2)
        var x: Int = initial
        // x should always be larger by an even amount, t might be an even amount
        // the difference between x and num should be t

        for _ in 1...t {
            x -= 1
            num += 1
            if x == num {
                return initial
            }
        }


        return initial
    }
}
