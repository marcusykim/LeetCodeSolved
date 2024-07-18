import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        
        // look into using a recursive helper with difference signature to help keep tracking string that we are building
        // once we reach the end of the recursion, get the path into the result,

        // preorder traversal,
        // visit node, grab value, append to string
            // if root, do not append arrow
        //traverse left
        // traverse right

        var node = root

        var result: [String] = [] // this is the global variable that will be modified from within the recursive helper


        print(node?.val)

        // append to string with arrow


        func helper(_ node: TreeNode, _ path: String) {
            
        }


        if node?.left == nil && node?.right == nil {
            return [""]
        }

        
        binaryTreePaths(node?.left)
       // print(node?.val)
        binaryTreePaths(node?.right)
        //print(node?.val)


        return [""]


    }
}
