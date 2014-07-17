//
//  SwiftDefaultable.swift
//  SwiftSugar
//
//  Created by Konstantin Koval on 17/07/14.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

extension Int : Defaultable {
    static func defaultValue() -> Int { return 0 }
}

extension UInt : Defaultable {
    static func defaultValue() -> UInt { return 0 }
}

extension Float : Defaultable {
    static func defaultValue() -> Float { return 0 }
}

extension Double : Defaultable {
    static func defaultValue() -> Double { return 0 }
}

extension String : Defaultable {
    static func defaultValue() -> String { return "" }
}

extension Array : Defaultable {
    static func defaultValue() -> Array { return [] }
}

extension Dictionary : Defaultable {
    static func defaultValue() -> Dictionary { return [:] }
}

