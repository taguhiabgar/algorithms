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
    }
    
    // MARK: - Testing methods
    
    func randomIntArray() -> [Int] {
        // implementation missing
        return [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    }
    
    func testInsertionSort() {
        print("-- Test Insertion Sort --")
        
        let arr = randomIntArray()
        let sortedWithInsertionSort = arr.sortedByInsertionSort()
        let reallySorted = arr.sorted()
        
        // print detailed log
        print("Initial array:")
        print(arr)
        print("Insertion:")
        print(sortedWithInsertionSort)
        print("Expected result:")
        print(reallySorted)
        
        // result
        print(sortedWithInsertionSort == reallySorted ? "SUCCESS" : "FAIL")
    }
    
    func testSelectionSort() {
        print("-- Test Selection Sort --")
        
        let arr = randomIntArray()
        let sortedWithSelectionSort = arr.sortedBySelectionSort()
        let reallySorted = arr.sorted()
        
        // print detailed log
        print("Initial array:")
        print(arr)
        print("Selection:")
        print(sortedWithSelectionSort)
        print("Expected result:")
        print(reallySorted)
        
        // result
        print(sortedWithSelectionSort == reallySorted ? "SUCCESS" : "FAIL")
    }
    
}

