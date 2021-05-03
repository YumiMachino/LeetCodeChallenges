//
//  ShuffleString.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/20.
//

import Foundation

/*
 - LeetCode #1528 Shuffle String
 https://leetcode.com/problems/shuffle-string/
 */


func restoreString(_ s: String, _ indices: [Int]) -> String {
    
//    func subscriptStr(index: Int, str: String) -> String {
//        return str(str[str.index(str.startIndex, offsetBy: index)])
//    }
    
    var temp = indices
    temp.sort()
    var result = ""
    for i in 0..<indices.count {
        let index = indices[i]
        result = result + s[index]
    }
    return result
}
