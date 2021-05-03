//
//  NarrTreePreorderTraversal.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/22.
//

import Foundation

/*
 - LeetCode #589 N-ary PreOrder Traversal
 https://leetcode.com/problems/n-ary-tree-preorder-traversal/
 */

 public class Node {
     public var val: Int
     public var children: [Node]
     public init(_ val: Int) {
         self.val = val
         self.children = []
     }
}

func preorder(_ root: Node?) -> [Int] {
    var arr = [Int]()
    func helper(_ root: Node?) {
        if root == nil { return }
        arr.append(root!.val)
        for c in root!.children {
            helper(c)
        }
    }
    helper(root)
    return arr
}
