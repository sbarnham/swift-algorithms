//
//  UnknownTest.swift
//  Standard Algorithms Tests
//
//  Created by  on 15/11/2019.
//  Copyright © 2019 Barnham, Samuel (ABH). All rights reserved.
//

import XCTest

class UnknownTest: XCTestCase {

    func testSumOfFirstAndLastWithIntegerArrayReturnsSumOfFirstAndLastItems() {
        //arrange
        let inputData = [1,3,4,5]
        let expected = 6
        let unknown = Unknown()
        //act
        let actual = unknown.sumOfFirstAndLast(data: inputData)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testSumOfFirstAndLastWithSingleElementArrayReturnsSingleElementSquared() {
        //arrange
        let inputData = [27]
        let expected = 729
        let unknown = Unknown()
        //act
        let actual = unknown.sumOfFirstAndLast(data: inputData)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testSumOfFirstAndLastWithEmptyArrayReturns0() {
        //arrange
        let inputData = [Int]()
        let expected = 0
        let unknown = Unknown()
        //act
        let actual = unknown.sumOfFirstAndLast(data: inputData)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testModeOfSortedArrayReturnsCorrectMode() {
        //arrange
        let inputData = [1,2,2,2,3,3,3,3,4,5,5,5,5,5,7,9,10]
        let expected = 5
        let unknown = Unknown()
        //act
        let actual = unknown.modeOfSortedArray(data: inputData)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testModeOfSortedArrayWithNoRepeatsReturns0() {
        //arrange
        let inputData = [1,2,3,4,5,6,7,8,9,10]
        let expected = 0
        let unknown = Unknown()
        //act
        let actual = unknown.modeOfSortedArray(data: inputData)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testModeOfSingleElementArrayReturnsSingleElement() {
        //arrange
        let inputData = [20]
        let expected = 20
        let unknown = Unknown()
        //act
        let actual = unknown.modeOfSortedArray(data: inputData)
        //assert
        XCTAssertEqual(actual, expected)
    }
}
