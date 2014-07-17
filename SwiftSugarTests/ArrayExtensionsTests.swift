//
//  ArrayExtensionsTests.swift
//  SwiftSugar
//
//  Created by Rui Peres on 06/07/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import XCTest

class ArrayExtensionsTests: XCTestCase {

    func testTake1Element (){
        
        var result : Array = [1,2,3].initial(1)
        XCTAssertEqual(result[0], 1, "Should be 1")
        XCTAssertEqual(result.count, 1, "Should have 1 element")
    }
    
    func testTakeElement (){
        
        var result : Array = [1,2,3].initial()
        XCTAssertEqual(result[0], 1, "Should be 1")
        XCTAssertEqual(result.count, 1, "Should have 1 element")
    }
    
    func testTakeMoreElementsThanArrayHas (){
        
        var result : Array = [1,2,3].initial(4)
        XCTAssertEqual(result.count, 0, "Should have 0 element")
    }
    
    func testDrop (){
        var result : Array = [1,2,3].drop({$0 % 2 == 0})
        XCTAssertEqual(result[0], 2, "Should be 2")
    }
    
    func testMinimum (){
     
        var minimum : Int = [1,2,3,4,5].minimum()
        XCTAssertEqual(minimum, 1, "Should be 1")
    }
    
    func testMaximum (){
        
        var maximum : Int = [1,2,3,4,5].maximum()
        XCTAssertEqual(maximum, 5, "Should be 5")
    }
    
    func testNumberTimesRepeated (){
        
        var numberTimesRepeated : Int = [1,2,3,4,5].numberTimesRepeated(2)
        XCTAssertEqual(numberTimesRepeated, 1, "Should be 1")
    }
    
    func testNumberTimesRepeatedForNotFoundNumber (){
        
        var numberTimesRepeated : Int = [1,2,3,4,5].numberTimesRepeated(6)
        XCTAssertEqual(numberTimesRepeated, 0, "Should be 0")
    }
    
    func testNumberTimesRepeatedForMoreThanOnce (){
        
        var numberTimesRepeated : Int = [1,2,3,4,5,1].numberTimesRepeated(1)
        XCTAssertEqual(numberTimesRepeated, 2, "Should be 2")
    }
    
    func testRemoveElements (){
        var removed = [1,2,3,4].remove(2)
        println(removed)
        XCTAssertTrue(removed == [3, 4], "should be equal")
        XCTAssertEqual(removed.count, 2, "should have 2 elements")
    }
  
    func testIntZipWithPlus() {
        
        var ziped = zipWith(+, [1,2,3], [5,6,7])
        var expected = [6, 8, 10]
        XCTAssertTrue( ziped == expected, "shold be equal")
    }
    
    func testIntZipWithMinus() {
        
        var ziped = zipWith(-, [1,6,7], [5,6,4])
        var expected = [-4, 0, 3]
        XCTAssertTrue( ziped == expected, "shold be equal")
    }
    
    func testIntZipWithMultiply() {
        
        var ziped = zipWith(*, [1,2,3], [5,6,7])
        var expected = [5, 12, 21]
        XCTAssertTrue( ziped == expected, "shold be equal")
    }
    
    func testStringZipWithPlus() {

        var ziped = zipWith(+, ["1","2","3"], ["5","6","7"])
        var expected = ["15","26", "37"]
        XCTAssertTrue( ziped == expected, "shold be equal")
    }
}
