//
//  Factorial.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/21.
//

import Foundation

func factorial(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return 1
    }
    return factorial(n - 1) * n
}
