import Foundation

class Solution {
    func buyChoco(_ prices: [Int], _ money: Int) -> Int {
        
        var sortedPrices = prices.sorted()

        for i in 0..<sortedPrices.count - 1 {
            if sortedPrices[i] + sortedPrices[i + 1] <= money {
                return money - (sortedPrices[i] + sortedPrices[i + 1])
            }
        }

        return money

    }
}
