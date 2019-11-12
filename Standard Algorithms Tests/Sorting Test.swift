//
//  Sorting Test.swift
//  Standard Algorithms Tests
//
//  Created by Barnham, Samuel (ABH) on 05/11/2019.
//  Copyright © 2019 Barnham, Samuel (ABH). All rights reserved.
//

import XCTest

class Sorting_Test: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let data = [6, 3, 4, 5]
        let expected = [3, 4, 5, 6]
        let sorting = Sorting()
        //act
        let actual = sorting.bubbleSort(data: data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    func testBubbleSortWithManyIntegerArraysReturnsSortedArrays() {
        //arrange
        let testCases = [(input: [5,7,9,2], expected: [2,5,7,9]),(input: [6,5,4,3,2,1], expected: [1,2,3,4,5,6])]
        let sorting = Sorting()
        //act and assert
        for testCase in testCases {
            let actual = sorting.bubbleSort(data:testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
        
    }
    
    func testBubbleSortPerformanceWithArraySize5() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 5 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.bubbleSort(data: data)
        }
        
    }
    
    func testBubbleSortPerformanceWithArraySize50() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 50 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.bubbleSort(data: data)
        }
            
        }
    
    func testBubbleSortPerformanceWithArraySize500() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 500 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.bubbleSort(data: data)
        }
            
        }
        
    func testMergeWith2SortedArraysReturns1SortedArray() {
        //arrange
        let data = [1,3,5]
        let data2 = [2,6,10]
        let sorting = Sorting()
        //act
        let actual = sorting.merge(left: data, right: data2)
        //assert
        XCTAssertEqual(actual, [1,2,3,5,6,10])
    }
    
    func testMergeSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let data = [6, 3, 4, 5]
        let expected = [3, 4, 5, 6]
        let sorting = Sorting()
        //act
        let actual = sorting.mergeSort(data: data)
        //assert
        XCTAssertEqual(actual, expected)
        
    }
    
    func testMergeSortPerformanceWithArraySize5() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 5 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.mergeSort(data: data)
        }
        
    }
    
    func testMergeSortPerformanceWithArraySize50() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 50 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.mergeSort(data: data)
        }
            
        }
    
    func testMergeSortPerformanceWithArraySize500() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 500 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.mergeSort(data: data)
        }
            
        }
    
    func testLinearSearchWithIntegerArrayReturnsGivenValue() {
        //arrange
        let data = [6, 3, 4, 5]
        let expected = data[Int.random(in: 1..<data.count)]
        let sorting = Sorting()
        //act
        let actual = sorting.linearSearch(data: data, searchItem: expected)
        //assert
        XCTAssertEqual(actual, expected)
        
    }
    
    func testLinearSearchPerformanceWithArraySize5() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 5 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        let expected = data[Int.random(in: 1..<data.count)]
        //act
        measure {
            sorting.linearSearch(data: data, searchItem: expected)
        }
        
    }
    
    func testLinearSearchPerformanceWithArraySize50() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 50 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        let expected = data[Int.random(in: 1..<data.count)]
        //act
        measure {
            sorting.linearSearch(data: data, searchItem: expected)
        }
            
        }
    
    func testLinearSearchPerformanceWithArraySize500() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 500 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        let expected = data[Int.random(in: 1..<data.count)]
        //act
        measure {
            sorting.linearSearch(data: data, searchItem: expected)
        }
            
        }
    
    func testBinarySearchWithIntegerArrayReturnsGivenValue() {
        //arrange
        let data = [6, 3, 4, 5, 7, 1, 2, 9, 8]
        let expected = data[Int.random(in: 1..<data.count)]
        let sorting = Sorting()
        //act
        let actual = sorting.binarySearch(data: data, searchItem: expected)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBinarySearchPerformanceWithArraySize5() {
         //arrange
         let sorting = Sorting()
         var data = [Int]()
         var i = 0
         while i < 5 {
             data.append(Int.random(in: 1...1000))
             i = i + 1
         }
         let expected = data[Int.random(in: 1..<data.count)]
         //act
         measure {
             sorting.binarySearch(data: data, searchItem: expected)
         }
         
     }
     
     func testBinarySearchPerformanceWithArraySize50() {
         //arrange
         let sorting = Sorting()
         var data = [Int]()
         var i = 0
         while i < 50 {
             data.append(Int.random(in: 1...1000))
             i = i + 1
         }
         let expected = data[Int.random(in: 1..<data.count)]
         //act
         measure {
             sorting.binarySearch(data: data, searchItem: expected)
         }
             
         }
     
     func testBinarySearchPerformanceWithArraySize500() {
         //arrange
         let sorting = Sorting()
         var data = [Int]()
         var i = 0
         while i < 500 {
             data.append(Int.random(in: 1...1000))
             i = i + 1
         }
         let expected = data[Int.random(in: 1..<data.count)]
         //act
         measure {
             sorting.binarySearch(data: data, searchItem: expected)
         }
             
         }

    func testQuickSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let data = [6, 3, 4, 5]
        let expected = [3, 4, 5, 6]
        let sorting = Sorting()
        //act
        let actual = sorting.quickSort(data: data)
        //assert
        XCTAssertEqual(actual, expected)
        
    }
    
    func testQuickSortPerformanceWithArraySize5() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 5 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.quickSort(data: data)
        }
        
    }
    
    func testQuickSortPerformanceWithArraySize50() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 50 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.quickSort(data: data)
        }
            
        }
    
    func testQuickSortPerformanceWithArraySize500() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 500 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.quickSort(data: data)
        }
            
        }
    
    func testInsertionSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let data = [6, 3, 4, 5]
        let expected = [3, 4, 5, 6]
        let sorting = Sorting()
        //act
        let actual = sorting.insertionSort(data: data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testInsertionSortPerformanceWithArraySize5() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 5 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.insertionSort(data: data)
        }
        
    }

    func testInsertionSortPerformanceWithArraySize50() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 50 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.insertionSort(data: data)
        }
            
        }

    func testInsertionSortPerformanceWithArraySize500() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        var i = 0
        while i < 500 {
            data.append(Int.random(in: 1...1000))
            i = i + 1
        }
        //act
        measure {
            sorting.insertionSort(data: data)
        }
            
        }
}
