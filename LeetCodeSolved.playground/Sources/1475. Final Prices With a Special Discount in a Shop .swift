import Foundation

class Solution1475 {
    func finalPrices(_ prices: [Int]) -> [Int] {
        
        // i think i can use filter here to find the lowest price of next element that has a lower price

        var result: [Int] = []

        for (index, price) in prices.enumerated() {
            // price - discount

            let eligibleItems = prices.indices.filter{prices[$0] <= price}

           // print (eligibleItems)

            // find all after the current index
            
            let itemsAfterCurrent = eligibleItems.filter{$0 > index}

            if let minIndex = itemsAfterCurrent.min() {
                result.append(price - prices[minIndex])
            } else {
                result.append(price)
            }



        }



        return result
    }
}
