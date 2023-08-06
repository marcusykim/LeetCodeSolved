import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution2807 {
    func insertGreatestCommonDivisors(_ head: ListNode?) -> ListNode? {
        
        if head!.next == nil {
            return head
        }

        var head = head
        var lagging = head
        var leading = lagging!.next ?? nil


        while leading != nil {
            var larger = max(lagging!.val, leading!.val)
            var smaller = min(lagging!.val, leading!.val)

            for i in 0...smaller {
                var j = smaller - i

                //print(j)

                    if larger % j == 0 {
                        var newNode = ListNode(j)
                        print(newNode.val)
                        lagging!.next = newNode
                        newNode.next = leading
                        lagging = newNode
                        leading = leading!.next
                        break
                    } else {
                        lagging = lagging!.next
                        leading = leading!.next
                    }
                
            }


        }


        return head

    }
}
