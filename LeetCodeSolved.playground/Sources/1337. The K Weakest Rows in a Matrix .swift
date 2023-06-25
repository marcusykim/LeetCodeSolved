import Foundation

class Solution1337 {
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        
        // use filter to reduce each row into an array of just 1s
        // do this for all rows
        // add each of the rows to a dictionary in their given order
        // sort the row by the associated count

        var dict: [Int: Int] = [:]

        for row in 0..<mat.count {
            var row1s = mat[row].filter{$0 == 1}

            dict[row] = row1s.count

            print(row1s)
        }

        let sorted = dict.sorted {
            if $0.1 == $1.1 {
                return $0.0 < $1.0
            }
    
            return $0.1 < $1.1
        }
        var result: [Int] = []

        for pair in 0..<k {

            result.append(sorted[pair].0)
        }
            

        return result

    }
}
