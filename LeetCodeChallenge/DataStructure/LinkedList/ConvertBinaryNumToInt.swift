//
//  ConvertBinaryNumToInt.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/20.
//

import Foundation
/*
 - LeetCode #1290 Convert Binary Number in a Linked List to Integer
 https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/
 */

func getDecimalValue(_ head: ListNode?) -> Int {
    var numInBase2 = [Int]()
    
    func helper(_ head: ListNode?) {
        if head?.next == nil {
            numInBase2.append(head!.val)
            return
        }
        helper(head?.next)
        return
    }
    
    helper(head)
    var result = 0
    var count = numInBase2.count - 1
    for i in 0..<numInBase2.count {
        result = result + Int(pow(Double(numInBase2[i]), Double(count)))
        count -= 1
    }
    return result
  }


 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
