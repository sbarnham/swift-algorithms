//
//  Unknown.swift
//  Standard Algorithms
//
//  Created by Barnham, Samuel (ABH) on 15/11/2019.
//  Copyright © 2019 Barnham, Samuel (ABH). All rights reserved.
//

import Foundation

class Unknown {
    func sumOfFirstAndLast(data: [Int]) -> Int {
        if data.count > 1{
            let sum = data[0] + data[data.count - 1]
            return sum
        } else if data.count == 1 {
            let sum = data[0] * data[0]
            return sum
        } else {
            return 0
        }
    }
    
    func modeOfSortedArray(data: [Int]) -> Int {
        var mode = [Int]()
        var count = [Int]()
        var currentCount = 0
        for i in 0 ..< data.count {
            while data[i] == data[i+1] {
                mode.append(i)
                currentCount = currentCount + 1
                var i = i + 1
            }
        }
        var i = 0
        
    }
}
