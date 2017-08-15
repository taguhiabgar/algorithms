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
        testInsertionSort()
        testSelectionSort()
        testMergeSort()
    }
    
    // MARK: - Testing methods
    
    func randomIntArray() -> [Int] {
        // implementation missing
        return [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    }
    
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

