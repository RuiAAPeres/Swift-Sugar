//
//  SwiftDefaultableTest.swift
//  SwiftSugar
//
//  Created by Konstantin Koval on 17/07/14.
//  Copyright (c) 2014 SF. All rights reserved.
//

import XCTest

class SwiftDefaultableTest: XCTestCase {

    func testIntDefault() {
        XCTAssertEqual(Int.defaultValue(), 0, "wrong default value")
    }
    func testUintDefault() {
        XCTAssertEqual(UInt.defaultValue(), 0, "wrong default value")
    }
    func testFloatDefault() {
        XCTAssertEqual(Float.defaultValue(), 0, "wrong default value")
    }
    func testDoubleDefault() {
        XCTAssertEqual(Double.defaultValue(), 0, "wrong default value")
    }
    func testStringDefault() {
        XCTAssertEqual(String.defaultValue(), "", "wrong default value")
    }
    func testArrayDefault() {
        XCTAssertTrue(Array<Int>.defaultValue() == [], "wrong default value")
        XCTAssertTrue(Array<Float>.defaultValue() == [], "wrong default value")
    }
    func testDictionaryDefault() {
        XCTAssertTrue(Dictionary<Int, Int>.defaultValue() == [:], "wrong default value")
        XCTAssertTrue(Dictionary<String, String>.defaultValue() == [:], "wrong default value")
    }
}
