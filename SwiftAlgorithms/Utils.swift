//
//  Utils.swift
//  SwiftAlgorithms
//
//  Created by Taguhi Abgaryan on 8/11/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import Foundation

extension Array {
    public mutating func swap(firstIndex: Int, secondIndex: Int) {
        let temp = self[firstIndex]
        self[firstIndex] = self[secondIndex]
        self[secondIndex] = temp
    }
}
