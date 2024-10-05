import Foundation

class Solution {
func trimMean(_ arr: [Int]) -> Double {
  var length = arr.count
  var numberOfItemsToRemove = Int(0.05 * Double(length))

  var sortedArr = arr.sorted()
  let indexToRemoveMax = (length - numberOfItemsToRemove) ..< length
  let indexToRemoveMin = 0 ..< numberOfItemsToRemove
  
  sortedArr.removeSubrange(indexToRemoveMax)
  sortedArr.removeSubrange(indexToRemoveMin)

  let result = (Double(sortedArr.reduce(0, +)) / Double(sortedArr.count))
  
  return result
}
}
