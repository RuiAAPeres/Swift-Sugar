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
}
