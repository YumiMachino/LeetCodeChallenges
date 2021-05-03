//
//  Basic.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/22.
//

import Foundation

/*
 Tree Basics:
 1. parent only array - Binary Tree (node: x, left: 2 * x, right: 2 * x + 1)
 2. 2D array - Binary Tree (node: x: left, A[x][0], right: A[x][1])
 
 Tree Traversal:
 - Graph -> DFS, BFS
 (can be used for Tree)
 - Tree Specifics
    ->Pre-Order (node, leftsubtree(call preorder(leftsubtree)), rightsubtree)
    ->In-Order ( leftsubtree(call Inorder(leftsubtree)), node,rightsubtree)
    ->Post-Order
 */

func storeTree(){
    
    /// tree = [][]
    var tree = [[Int]] (repeating:[Int](repeating: 0, count: 2) , count: 26)
    
    
    
}
