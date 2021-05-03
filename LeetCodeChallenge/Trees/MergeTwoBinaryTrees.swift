//
//  MergeTwoBinaryTrees.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/21.
//

import Foundation
/*
 - LeetCode # 617 Merge Two Binary Trees
 https://leetcode.com/problems/merge-two-binary-trees/
 
 */

/// Tree traversal, pre-order
func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
    if root1 == nil {
        return root2
    }
    if root2 == nil {
        return root1
    }
    var trees = TreeNode(root1!.val + root2!.val)
    trees.left = mergeTrees(root1?.left, root2?.left)
    trees.right = mergeTrees(root1?.right, root2?.right)
    
    return trees
}
