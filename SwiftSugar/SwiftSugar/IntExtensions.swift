//
//  IntExtensions.swift
//  SwiftSugar
//
//  Created by Rui Peres on 03/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

extension Int {
    func times(@noescape `repeat`: Void -> Void) {
        
        for _ in 0..<self {
            `repeat`()
        }
    }
    
    func timesWithIndex(@noescape `repeat`: (index: Int) -> Void) {
        
        for i in 0..<self {
            `repeat`(index: i)
        }
    }
    
    func upTo(upperLimit:Int, @noescape doTask:(number: Int) -> Void) {
        
        for i in self..<upperLimit{
            doTask(number: i)
        }
    }
    
    func downTo(lowerLimit:Int, @noescape doTask:(number: Int) -> Void) {
        
        let range = lowerLimit...self
        
        for i in range.reverse() {
            doTask(number: i)
        }
    }
}
