//
//  SwiftSugarTests.swift
//  SwiftSugarTests
//
//  Created by Rui Peres on 03/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import XCTest

class IntExtensionsTests: XCTestCase {
    
    func testTimes (){
        
        var numberOfTimes = 0;
        5.times(){numberOfTimes+=1}
        XCTAssertEqual(numberOfTimes, 5, "Should be 5")
    }
    
    func testTimesWithIndex (){
        
        var startingIndex = 0;
        5.timesWithIndex(){index in XCTAssertEqual(index, startingIndex++, "Should be equal")}
    }
    
    func testTakeElements (){
        
        var result : Array = take([1,2,3], 1)
        XCTAssertEqual(result[0], 1, "Should be 1")
        var size = result.count
        XCTAssertEqual(size, 1, "Should have 1 element")

        var result1 = take([4,3,2,1], 2)
        XCTAssertEqual(result1[0], 4, "Should be 4")
        XCTAssertEqual(result1[1], 3, "Should be 3")

        XCTAssertEqual(result1.count, 2, "Should have 2 element")

    }
}
