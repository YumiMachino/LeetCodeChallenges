//
//  SearchInBST.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/22.
//

import Foundation

/*
 - LeetCode #700: Search in a Binary Search Tree
 https://leetcode.com/problems/search-in-a-binary-search-tree/
 */

func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    if root == nil { return nil }
    if root?.val == val {
        return root
    }
    if root!.val > val {
        return searchBST(root?.left, val)
    }
    return searchBST(root?.right, val)
}
