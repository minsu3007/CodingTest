//
//  File.swift
//
//
//  Created by 강민수 on 2022/07/14.
//

import Foundation

func solution(_ id_list: [String], _ report: [String], _ k: Int) -> [Int] {
    
    var answer: [Int] = Array(repeating: 0, count: id_list.count)
    var reportDict: [String: [String]] = [:]
    var idsArr: [String: Int] = [:]
    
    for (x, ids) in id_list.enumerated() {
        reportDict[ids] = []
        idsArr[ids] = x
    }
    
    for ids in Set(report) {
        let reportID = ids.split(separator: " ").map { String($0) }
        reportDict[reportID[1]]?.append(reportID[0])
    }
    
    for name in idsArr.keys {
        let reporters = reportDict[name]!
        if reporters.count >= k {
            for reporter in reporters {
                answer[idsArr[reporter]!] += 1
            }
        }
    }
    
    return answer
}


print(solution(["muzi", "frodo", "apeach", "neo"],
         ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"],
         2))

