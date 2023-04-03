import Foundation


 
 public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
 
class Solution2 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        // traverse both initial linked lists at the same time
        // with each node, add the matching figits together and save append the result in an array
            // if you encounter a sum that's greater than 9, input the 1's place into the array and put 1 into the next index of the array

            // loop through the array afterwards to create a new list
            // or i could try just creating the resulting list while I traverse and add

        var currentl1Node = l1
        var currentl2Node = l2
        var resultListNode: ListNode?
        var resultHead: ListNode?
        var doWeCarry = false

        // how do I create a new list and continue linking nodes to this new list?

        // if l1?.val == 0 {
        //     return l2
        // } else if l2?.val == 0 {
        //     return l1
        // }

        while currentl1Node != nil || currentl2Node != nil || doWeCarry == true{
            print("currentl1Node: ", currentl1Node?.val)
            print("currentl2Node: ", currentl2Node?.val)


            let l1Val = currentl1Node?.val ?? 0
            let l2Val = currentl2Node?.val ?? 0
            var tempSum = l1Val + l2Val

            if doWeCarry == true {
                tempSum += 1
                doWeCarry = false
            }

            if tempSum > 9 {
                doWeCarry = true
                tempSum = tempSum % 10
            }

            if resultListNode == nil {
                

                resultListNode = ListNode(tempSum)

                print("resultListNode: ", resultListNode?.val)
                resultHead = resultListNode
            } else {

                resultListNode?.next = ListNode(tempSum)
                resultListNode = resultListNode?.next

                print("resultListNode?.next")
            }

            currentl1Node = currentl1Node?.next
            currentl2Node = currentl2Node?.next
            
        }

        return resultHead

    }
}
