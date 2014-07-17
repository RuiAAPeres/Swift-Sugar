//
//  Defaultable.swift
//  SwiftSugar
//
//  Created by Konstantin Koval on 17/07/14.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

/*
Defaultable is a way to create a dedaul falues fro type
*/
protocol Defaultable {
    // Create an instalstane of a class with default values.
    class func defaultValue() -> Self
}


func testDef1() {
    Int.defaultValue()
    String.defaultValue()
}

func defaultValue<T : Defaultable>() -> T {
    return T.defaultValue()
}
