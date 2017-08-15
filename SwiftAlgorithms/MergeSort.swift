//
//  MergeSort.swift
//  SwiftAlgorithms
//
//  Created by Taguhi Abgar on 8/15/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    public mutating func sortByMergeSort() {
        
        if self.count != 1 {
            // divide self into two sequences
            let breakpoint: Int = count / 2
            
            var first: [Element] = []
            for i in 0..<breakpoint {
                first.append(self[i])
            }
            
            var second: [Element] = []
            for i in breakpoint..<count {
                second.append(self[i])
            }
            
            // sort those sequences
            first.sortByMergeSort()
            second.sortByMergeSort()
            self = combineSortedSequences(first, second)
        }
        
    }
    
    private func combineSortedSequences(_ first: [Element], _ second: [Element]) -> [Element] {
        var result = [Element]()
        
        var flag1 = 0
        var flag2 = 0
        
        while result.count < first.count + second.count {
            if flag1 == first.count {
                if flag2 < second.count {
                    for i in flag2..<second.count {
                        result.append(second[i])
                    }
                }
            } else if flag2 == second.count {
                if flag1 < first.count {
                    for i in flag1..<first.count {
                        result.append(first[i])
                    }
                }
            } else {
                if first[flag1] < second[flag2] {
                    result.append(first[flag1])
                    flag1 += 1
                } else {
                    result.append(second[flag2])
                    flag2 += 1
                }
            }
            
        }
        
        return result
    }
    
}
