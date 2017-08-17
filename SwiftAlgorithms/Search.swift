//
//  Search.swift
//  SwiftAlgorithms
//
//  Created by Taguhi Abgar on 8/16/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import Foundation


extension Array where Element: Comparable {
    
    // MARK: - Binary search
    
    // performs binary search algorithm on whole array
    // NOTE: binary search can be applied only on a sorted sequence in order to work right
    func binarySearch(number: Element) -> Index? {
        return binarySearch(number: number, inRangeFrom: startIndex, to: endIndex)
    }
    
    // performs binary search algorithm on array in given range
    // binary search algorithm
    func binarySearch(number: Element, inRangeFrom start: Index, to end: Index) -> Index? {
        if !isEmpty {
            if first! <= number && last! >= number {
                var lowerBound = start
                var upperBound = end
                var middle: Index = (lowerBound + upperBound) / 2
                
                while lowerBound <= upperBound {
                    if self[middle] > number {
                        upperBound = middle - 1
                    } else if self[middle] < number {
                        lowerBound = middle + 1
                    } else { // self[middle] == number
                        return middle
                    }
                    
                    middle = (lowerBound + upperBound) / 2
                }
            }
        }
        return nil
    }
    
    // MARK: - Linear search
    
    // linear search algorithm
    func linearSearch(number: Element) -> Index? {
        for i in 0..<count {
            if self[i] == number {
                return i
            }
        }
        return nil
    }
    
}
