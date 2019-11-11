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
    
    func linearSearch(data: [Int]) -> Int {
        var itemFound = 0
        print("Enter number")
        let searchItem = 4
          var i = 0
          while i != data.count {
            if data[i] == searchItem {
              itemFound = i
              return itemFound
            } else {
              i = i + 1
            }
          }
        return itemFound
        }
    func binarySearch(data: [Int]) -> Int {
        var itemFound = 0
        print("Enter number")
        let searchItem = 4
        var lowerBound = 0
        var midPoint = 0
        var upperBound = data.count - 1
        while itemFound == 0 && lowerBound <= upperBound {
            midPoint = (lowerBound + upperBound)/2
            if data[midPoint] == searchItem {
                itemFound = midPoint
                return itemFound
            } else if data[midPoint] < searchItem {
                lowerBound = midPoint + 1
            } else {
                upperBound = midPoint - 1
            }
        }
        return itemFound
    }
    
    func quickSort(data: [Int]) -> [Int] {
        if data.count <= 1 {
            return data
        } else {
            let pivot = data[0]
            var left = [Int]()
            var right = [Int]()

            for i in 1..<data.count {
                let item = data[i]
                if item < pivot {
                    left.append(item)
                } else {
                    right.append(item)
                }
            }

            var sortedData = [Int]()
            sortedData.append(contentsOf: quickSort(data: left))
            sortedData.append(pivot)
            sortedData.append(contentsOf: quickSort(data: right))
            return sortedData
        }

}
    func insertionSort(data: [Int]) -> [Int] {
        var data = data
        for i in 1 ..< data.count {
            let temp = data[i]
            var j = i - 1
            
            while j >= 0 && data[j] > temp {
                data[j+1] = data[j]
                j = j - 1
            }
            
            data[j+1] = temp
        }
    return data
    }
        
}
