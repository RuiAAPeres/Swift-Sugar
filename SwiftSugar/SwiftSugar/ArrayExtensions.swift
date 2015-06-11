//
//  ArrayExtensions.swift
//  SwiftSugar
//
//  Created by Rui Peres on 07/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

extension Array {
    
    func initial() -> Array {
        return self.initial(1)
    }
    
    func initial(initialElements : Int) -> Array {
        
        if(initialElements > self.count) {
            return self
        }
        
        return Array(self[0..<initialElements])
    }
    
    func remove(firstNumberOfElements : Int) -> Array {
        
        return Array(self[firstNumberOfElements..<self.count])
    }
    
    func minimum<U where U : Comparable>()-> U {
        var minimum = self[0] as! U
        
        for element in self {
            let castedElement = element as! U

            if castedElement < minimum {
                minimum = castedElement
            }
        }
        
        return minimum
    }
    
    func maximum<U where U : Comparable>()-> U {
        var maximum = self[0] as! U
        
        for element in self {
            let castedElement = element as! U
            if castedElement > maximum {
                maximum = castedElement
            }
        }
        
        return maximum
    }
    
    
    func numberTimesRepeated<U where U : Equatable>(elementInArray : U)-> Int {
        var repeated : Int = 0
        
        for element in self {
            if element as! U == elementInArray {
                repeated++
            }
        }
        
        return repeated
    }
}