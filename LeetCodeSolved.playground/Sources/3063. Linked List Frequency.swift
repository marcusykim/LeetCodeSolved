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
class Solution {
    func frequenciesOfElements(_ head: ListNode?) -> ListNode? {
        
        // traverse linked list
        // for each node, add value to dictionary, which also tracks frequency

        // after traversing the whole list, iterate through dictionary, add the frequencies to a new list

        var currentNode = head
        var dict: [Int: Int] = [:]

        while let node = currentNode {

            if dict[node.val] == nil {
                dict[node.val] = 1
            } else {
                dict[node.val]! += 1
            }

            currentNode = node.next
        }

        print(dict)

        var resultListHead: ListNode?
        var dictCurrentNode: ListNode?

        for entry in dict {

            print("pre if statement ", entry.value)
            if resultListHead == nil {
                resultListHead = ListNode(entry.value)
                dictCurrentNode = resultListHead
                print("inside if ", entry.value)
            } else {
                dictCurrentNode!.next = ListNode(entry.value)
                dictCurrentNode = dictCurrentNode!.next
                print("inside else ", entry.value)
            }

        }

        return resultListHead

    }
}
