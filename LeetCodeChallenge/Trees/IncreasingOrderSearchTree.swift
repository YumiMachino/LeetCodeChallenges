//
//  IncreasingOrderSearchTree.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/21.
//

import Foundation

/*
 - LeetCode #897 Increasing Order Search Tree
 https://leetcode.com/problems/increasing-order-search-tree/
 */

/// In-Order
func increasingBST(_ root: TreeNode?) -> TreeNode? {
    var arr = [Int]()
    
    func inOrder(_ root: TreeNode?) {
        if root == nil { return }
        inOrder(root?.left)
        arr.append(root!.val)
        inOrder(root?.right)
    }
    
    inOrder(root)
    /// arr に入れた後で、Treeクラスの形に落とし込む。あらかじめ-1の値を持つTreeNodeを作る
    let result = TreeNode(-1)
    var head: TreeNode? = result
    for element in arr {
        let node = TreeNode(element)
        head?.right = node
        head = head?.right
    }
    return result.right
}
