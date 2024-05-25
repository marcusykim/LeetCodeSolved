class Solution {
    func pivotInteger(_ n: Int) -> Int {
        let y = (n * n + n) / 2
        let x = Int(sqrt(Double(y)))
        return x * x == y ? x : -1
    }
}
