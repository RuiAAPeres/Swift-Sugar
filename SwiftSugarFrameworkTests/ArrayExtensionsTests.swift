//
//  ArrayExtensionsTests.swift
//  SwiftSugar
//
//  Created by Rui Peres on 06/07/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import XCTest
@testable import SwiftSugarFramework

class ArrayExtensionsTests: XCTestCase {

    func testTake1Element (){
        
        var result: Array = [1,2,3].initial(1)
        XCTAssertEqual(result[0], 1, "Should be 1")
        XCTAssertEqual(result.count, 1, "Should have 1 element")
    }
    
    func testTakeElement (){
        
        var result : Array = [1,2,3].initial()
        XCTAssertEqual(result[0], 1, "Should be 1")
        XCTAssertEqual(result.count, 1, "Should have 1 element")
    }
    
    func testTakeMoreElementsThanArrayHas (){
        
        let result : Array = [1,2,3].initial(4)
        XCTAssertEqual(result.count, 3, "Should have 0 element")
    }
    
    func testNumberTimesRepeated (){
        
        let numberTimesRepeated : Int = [1,2,3,4,5].numberTimesRepeated(2)
        XCTAssertEqual(numberTimesRepeated, 1, "Should be 1")
    }
    
    func testNumberTimesRepeatedForNotFoundNumber (){
        
        let numberTimesRepeated : Int = [1,2,3,4,5].numberTimesRepeated(6)
        XCTAssertEqual(numberTimesRepeated, 0, "Should be 0")
    }
    
    func testNumberTimesRepeatedForMoreThanOnce (){
        
        let numberTimesRepeated : Int = [1,2,3,4,5,1].numberTimesRepeated(1)
        XCTAssertEqual(numberTimesRepeated, 2, "Should be 2")
    }
    
    func testRemoveElements (){
        let removed = [1,2,3,4].remove(2)
        print(removed)
        XCTAssertTrue(removed == [3, 4], "should be equal")
        XCTAssertEqual(removed.count, 2, "should have 2 elements")
    }
}
