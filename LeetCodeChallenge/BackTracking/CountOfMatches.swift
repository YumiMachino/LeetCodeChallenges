//
//  CountOfMatches.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/20.
//

import Foundation
/*
 - LeetCode #1688 Count of Matches in Tournament
 https://leetcode.com/problems/count-of-matches-in-tournament/
 */

func numberOfMatches(_ n: Int) -> Int {
    
    var matches = 0
    func helper(_ n: Int) {
        /// best case: 1 team advance
        if n == 1 {
            return
        }
        /// Recursive case: check n
        if n % 2 == 0 {
            matches += (n / 2)
            helper(n - (n / 2))
            return
        }
        if n % 2 != 0 {
            matches += (n - 1) / 2
            helper(n - (n - 1) / 2)
            return
        }
    }
    
    helper(n)
    return matches
}
