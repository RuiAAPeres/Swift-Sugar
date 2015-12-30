//
//  SwiftSugarTests.swift
//  SwiftSugarTests
//
//  Created by Rui Peres on 03/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import XCTest
@testable import SwiftSugarFramework

class IntExtensionsTests: XCTestCase {
    
    func testTimes() {
        
        var numberOfTimes = 0
        5.times{numberOfTimes+=1}
        XCTAssertEqual(numberOfTimes, 5, "Should be 5")
    }
    
    func testTimesWithIndex() {
        
        var startingIndex = 0
        
        5.timesWithIndex {
            XCTAssertEqual($0, startingIndex, "Should be equal")
            startingIndex += 1
        }
        
        XCTAssertEqual(startingIndex, 5, "Should be equal")
    }

    func testUpTo() {
      
        var numberOfTimes = 0
        var startingIndex = 1
        
        startingIndex.upTo(3, doTask: {
            numberOfTimes += 1
            XCTAssertEqual($0, startingIndex, "Should be equal")
            startingIndex += 1
        })
        
        XCTAssertEqual(numberOfTimes, 2, "Should be called 2 times")
    }

    func testDownTo(){
      
        var numberOfTimes = 0
        var startingIndex = 4
        
        startingIndex.downTo(1, doTask: {
            numberOfTimes += 1
            XCTAssertEqual($0, startingIndex, "Should be equal")
            startingIndex -= 1
        })
        
        XCTAssertEqual(numberOfTimes, 4, "Should be called 2 times")
    }
}
