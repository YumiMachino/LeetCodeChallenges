//
//  BSTToGreaterSumTree.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/22.
//

import Foundation

/*
 - LeetCode #1038: Binary Search Tree to Greater Sum Tree
 https://leetcode.com/problems/binary-search-tree-to-greater-sum-tree/
 */

/// NOT PASSED YET

func bstToGst(_ root: TreeNode?) -> TreeNode? {
    /// traverse,  look for nodes greater than the node
    var sum = 0
    
    func helper(_ root: TreeNode?){
        if root == nil { return }
        helper(root?.right)
        sum = sum + root!.val
        root!.val = sum - root!.val
        helper(root?.left)
    }
    helper(root)
    return root
}
