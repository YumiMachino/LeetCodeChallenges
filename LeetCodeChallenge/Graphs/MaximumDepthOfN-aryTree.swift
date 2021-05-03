//
//  MaximumDepthOfN-aryTree.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/22.
//

import Foundation

/*
 - LeetCode #559 Maximum Depth of N-ary Tree
 - Breadth-first Search?
 https://leetcode.com/problems/maximum-depth-of-n-ary-tree/
 */

func maxDepth(_ root: Node?) -> Int {
        
    func dfs(_ root: Node?) -> Int {
        guard let root = root else { return 0}
        var tempMax = 0
        for node in root.children {
            tempMax = max(tempMax, dfs(node))
        }
        return tempMax + 1
    }
    
   return dfs(root)
}
