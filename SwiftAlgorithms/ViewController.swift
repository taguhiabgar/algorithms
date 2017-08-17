//
//  ViewController.swift
//  SwiftAlgorithms
//
//  Created by Taguhi Abgaryan on 8/10/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        testInsertionSort()
//        testSelectionSort()
//        testMergeSort()
        
        testLinearSearch()
        testBinarySearch()
    }
    
    // MARK: - Testing methods
    
    func randomIntArray() -> [Int] {
        // implementation missing
        return [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    }
    
    // MARK: - Test Search Algorithms
    
    func testLinearSearch() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8]
        let number = 10
        let index = array.linearSearch(number: number)
        
        print("-- Test Linear Search --")
        print("Array: \(array)")
        let stringIndex = (index == nil) ? "Not Found" : String(describing: index!)
        print("Index of \(number): \(stringIndex)")
    }
    
    func testBinarySearch() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8]
        let number = 3
        let index = array.binarySearch(number: number)
        
        print("-- Test Linear Search --")
        print("Array: \(array)")
        let stringIndex = (index == nil) ? "Not Found" : String(describing: index!)
        print("Index of \(number): \(stringIndex)")
    }
    
    // MARK: - Test Sorting Algorithms
    
    func testInsertionSort() {
        let array = randomIntArray()
        testSortingAlgorithm(for: array, sorted: array.sortedByInsertionSort(), algorithmName: "Insertion")
    }
    
    func testSelectionSort() {
        let array = randomIntArray()
        testSortingAlgorithm(for: array, sorted: array.sortedBySelectionSort(), algorithmName: "Selection")
    }
    
    func testMergeSort() {
        let array = randomIntArray()
        var sorted = array
        sorted.sortByMergeSort()
        testSortingAlgorithm(for: array, sorted: sorted, algorithmName: "Merge")
    }
    
    func testSortingAlgorithm(for array: [Int], sorted sortedArray: [Int], algorithmName: String) {
        let reallySorted = array.sorted()
        let status = sortedArray == reallySorted ? "SUCCESS" : "FAIL"
        
        // description
        print("-- Test \(algorithmName) Sort -- \(status)")
        
        // print detailed log
        print("Initial array:")
        print(array)
        print("\(algorithmName):")
        print(sortedArray)
        print("Expected result:")
        print(reallySorted)
        
        // result
        print(status)
        print()
    }
}

