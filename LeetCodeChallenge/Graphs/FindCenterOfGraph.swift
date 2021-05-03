//
//  FindCenterOfGraph.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/22.
//

import Foundation

/*
 - LeetCode #1791: Find Center of Start Graph
 https://leetcode.com/problems/find-center-of-star-graph/
 */

func findCenter(_ edges: [[Int]]) -> Int {
    
    let optionA = edges[0][0]
    let optionB = edges[0][1]
    var countA = 0
    var countB = 0

    for e in edges {
        if e.contains(optionA) {
            countA += 1
        }
        if e.contains(optionB){
            countB += 1
        }
    }
    
    if countA > countB {
        return optionA
    }
    return optionB
}
