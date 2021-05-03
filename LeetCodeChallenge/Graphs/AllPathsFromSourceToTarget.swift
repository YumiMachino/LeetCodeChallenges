//
//  AllPathsFromSourceToTarget.swift
//  LeetCodeChallenge
//
//  Created by Yumi Machino on 2021/04/22.
//

import Foundation

/*
- LeetCode #797: All Paths From Source to Target
 - Depth-First Search
 https://leetcode.com/problems/all-paths-from-source-to-target/
 */

func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
   var path = [Int]()
   var allPath = [[Int]]()
 
    func dfs(_ graph: [[Int]], _ vertex: Int, _ path: inout [Int], _ allPath: inout [[Int]]){
        /// add vertex
        path.append(vertex)
        
        /// when appending the last vertex
        if vertex == graph.count - 1 {
            allPath.append(path)
            path.popLast()
            return
        }
        
        for v in graph[vertex] {
            dfs(graph, v, &path, &allPath)
        }
        path.popLast()
    }
    
    dfs(graph, 0, &path, &allPath)
    return allPath
}
