//
//  InsertionSort.swift
//  SwiftAlgorithms
//
//  Created by Taguhi Abgaryan on 8/10/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import Foundation

// algorithm of insertion sort

extension Array where Element: Comparable {
    
    // sorts array by insertion sort algorithm
    public mutating func sortedByInsertionSort() {
        // not implemented
        for j in 1..<count {
            let key = self[j]
            // Insert key into the sorted sequence result[1 .. j - 1]
            var i = j - 1
            while i >= 0 && self[i] > key {
                self[i + 1] = self[i]
                i = i - 1
            }
            self[i + 1] = key
        }
    }
    
    // returns sorted copy of array
    public func performInsertionSort(on numbers: [Element]) -> [Element] {
        var result = numbers
        for j in 1..<result.count {
            let key = result[j]
            // Insert key into the sorted sequence result[1 .. j - 1]
            var i = j - 1
            while i >= 0 && result[i] > key {
                result[i + 1] = result[i]
                i = i - 1
            }
            result[i + 1] = key
        }
        return result
    }
}

