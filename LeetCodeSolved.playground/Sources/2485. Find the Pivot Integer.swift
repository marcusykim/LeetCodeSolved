import Foundation

class Solution {
    func pivotInteger(_ n: Int) -> Int {
        
        // find mean value

        // loop
            // continue adding to result until mean value is met
            // if none, return -1

        var result = 0
        var nArray = Array(1...n)
        nArray.insert(nArray.count / 2, at: nArray.index(of: nArray.count ))
        var mean = vDSP.mean(nArray)
        nArray.insert(mean, at: nArray.index(of: mean))

        var
        

    }
}
