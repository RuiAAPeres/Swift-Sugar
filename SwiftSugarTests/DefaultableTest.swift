//
//  DefaultableTest.swift
//  SwiftSugar
//
//  Created by Konstantin Koval on 17/07/14.
//  Copyright (c) 2014 SF. All rights reserved.
//

import XCTest

class DefaultableTest: XCTestCase {

    func testDefaultable() {

        var int: Int  = defaultValue()
        var string: String = defaultValue()
        XCTAssertEqual(int, 0, "should provide default value")
        XCTAssertEqual(string, "", "should provide default value")
    }
}
