//
//  Sorting.swift
//  Standard Algorithms
//
//  Created by Barnham, Samuel (ABH) on 05/11/2019.
//  Copyright © 2019 Barnham, Samuel (ABH). All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
        var i = 0
        var requires_pass = 0
        var array = data
        repeat {
            requires_pass = 0
            i = 0
            while i < (array.count-1) {
                if array[i] > array[i+1] {
                    var temp = array[i]
                    array[i] = array[i+1]
                    array[i+1] = temp
                    requires_pass = requires_pass + 1
                    }
                i = i + 1
            }
        } while requires_pass > 0
        return array
    }
    
}


