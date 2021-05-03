//
//  RangeSumBST.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/19.
//

import Foundation

/*
 - LeetCode #938 Range Sum of BST
 https://leetcode.com/problems/range-sum-of-bst/
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
    }
}

func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
    
    var sum = 0
    func helper(_ root: TreeNode?, _ low: Int, _ high: Int)  {
        
        if root == nil {
            return
        }
        /// base case: no leaves
        if low <= root!.val && root!.val <= high && root!.left == nil && root!.right == nil {
            sum += root!.val
           return
        }
        /// recursive case
        if low > root!.val {
             helper(root!.right, low, high)
            return
        }
        if root!.val > high {
            helper(root!.left, low, high)
            return
        }
        if low <= root!.val && root!.val <= high {
            sum += root!.val
            helper(root!.left, low, high)
            helper(root!.right, low, high)
            return
        }
        }
    helper(root!, low, high)
    return sum
}
