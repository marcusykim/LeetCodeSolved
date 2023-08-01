import Foundation

class Solution876 {
    func middleNode(_ head: ListNode?) -> ListNode? {
        
        var trailing = head, leading = head
    while let node = leading?.next {
        trailing = trailing?.next
        leading = node.next
    }
    return trailing

    }
}
