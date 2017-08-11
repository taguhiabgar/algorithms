//
//  SelectionSort.swift
//  SwiftAlgorithms
//
//  Created by Taguhi Abgaryan on 8/11/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import Foundation

// algorithm of selection sort

extension Array where Element: Comparable {
    
    // sorts array by selection sort algorithm
    public mutating func sortBySelectionSort() {
        for index in 0..<count - 1 {
            let minIndex = indexOfSmallest(inArray: self, from: index, to: count)
            self.swap(firstIndex: index, secondIndex: minIndex)
        }
    }
    
    // returns sorted copy of array
    public func sortedBySelectionSort() -> [Element] {
        var result = self
        for index in 0..<result.count - 1 {
            let minIndex = indexOfSmallest(inArray: result, from: index, to: result.count)
            result.swap(firstIndex: index, secondIndex: minIndex)
        }
        return result
    }
    
    private func indexOfSmallest(inArray array: Array, from start: Int, to end: Int) -> Int {
        var minIndex = start
        for index in (start + 1)..<end {
            if array[index] < array[minIndex] {
                minIndex = index
            }
        }
        return minIndex
    }
}


