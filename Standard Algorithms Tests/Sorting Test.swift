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
    

}
