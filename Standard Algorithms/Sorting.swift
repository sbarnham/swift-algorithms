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
        var left = left
        var right = right
        let i = 0
        while left.count > 0 && right.count > 0 {
            if left[i] < right[i] {
                result.append(left[i])
                let slice = left.dropFirst(1)
                left = Array(slice)
            } else {
                result.append(right[i])
                let slice = right.dropFirst(1)
                right = Array(slice)
            }
        }
        if left.count == 0 {
            result.append(contentsOf: right[i...right.count-1])
        } else {
            result.append(contentsOf: left[i...left.count-1])
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
