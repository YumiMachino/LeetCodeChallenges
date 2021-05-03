//
//  N-aryPostOrderTraversal.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/22.
//

import Foundation

/*
 - LeetCode #590: N-ary Post-Order Traversal
 https://leetcode.com/problems/n-ary-tree-postorder-traversal/
 */

func postorder(_ root: Node?) -> [Int] {
    var arr = [Int]()
    
    func helper(_ root: Node?) {
        if root == nil { return }
        for e in root!.children {
            helper(e)
        }
        arr.append(root!.val)
    }
    helper(root)
    return arr
}
