//
//  CountNegativeNumbers.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/20.
//

import Foundation
/*
 - LeetCode #1351 Count Negative Numbers in a Sorted Matrix
 https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
 */

func countNegatives(_ grid: [[Int]]) -> Int {
    var negativeCount = 0
    
    func binarySearchHelper(_ arr: [Int]){
        /// index
        var lower = 0
        var upper = arr.count - 1
        
        while lower < upper {
            let mid = lower + upper / 2
            print("mid index: ",mid)
            
            if arr[mid] < 0 {
                print("inner count: ")
                negativeCount += 1
                lower = mid + 1
            } else {
                lower = mid + 1
            }
        }
    }
    
    for i in 0..<grid.count {
        /// binary search : grid[i]
        print("grid i: ",grid[i])
        binarySearchHelper(grid[i])
        print("negativeCount: ", negativeCount)
    }
    print("negativeCount: ",negativeCount)
    return negativeCount
}
