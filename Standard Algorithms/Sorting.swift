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
                    let temp = array[i]
                    array[i] = array[i+1]
                    array[i+1] = temp
                    requires_pass = requires_pass + 1
                    }
                i = i + 1
            }
        } while requires_pass > 0
        return array
    }
    func merge(left: [Int], right: [Int]) -> [Int] {
        var result = [Int]()
        var i = 0
        var j = 0
        while left.count >= 0 || right.count >= 0 {
            if left[i] < right[j] {
                result.append(left[i])
                left.dropFirst(1)
            } else {
                result.append(right[j])
                right.dropFirst(1)
            }
        }
        if left.count == 0 {
            result.append(contentsOf: right[i...right.count])
        } else {
            result.append(contentsOf: left[j...left.count])
        }
        return result
    }


    
    func mergeSort(data: [Int]) -> [Int] {
        var array = data
        if array.count <= 1 {
            return array
        } else {
            let middle = array.count/2   //[1,2,3,4,5]
            let L = Array(array.dropLast(middle))
            let R = Array(array.dropFirst(L.count))
            let left = mergeSort(data: L)
            let right = mergeSort(data: R)
        
        return merge(left: left, right: right)
        }




}
}
