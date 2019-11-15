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
        if data.count == 1 {
            return data[0]
        }
        var modearray = [Int]()
        var mode = 0
        var count = [Int]()
        var currentCount = 0
        var i = 0
        while i < data.count-1 {
            if data[i] == data[i+1] {
                modearray.append(data[i])
                currentCount = 1
                while data[i] == data[i+1] {
                    currentCount = currentCount + 1
                    i = i + 1
                }
                count.append(currentCount)
                currentCount = 0
            }
        i = i + 1
        }
        if count.count == 0 {
            return mode
        }
        for i in 0 ..< count.count-1 {
            if count[i] > count[i+1] {
                mode = modearray[i]
            } else {
                mode = modearray[i+1]
            }
        }
        return mode
    }

        
    }
