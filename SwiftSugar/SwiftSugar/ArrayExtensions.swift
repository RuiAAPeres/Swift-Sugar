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
        var result = Array()
        
        if(initialElements > self.count) {
            return result
        }
        
        for index in 0..<initialElements  {
            result+=self[index]
        }
        
        return result
    }
    
    func drop(f : T -> Bool) -> Array {
        var result : [T] = []
        for element in self {
            if(f(element)) {
                result+=element
            }
        }
        return result
    }
    
    func remove(firstNumberOfElements : Int) -> Array {
        var result : [T] = self
        
        if(firstNumberOfElements > self.count) {
            return result
        }
        
        for index in 0..<firstNumberOfElements {
            result.removeAtIndex(index)
        }
        
        return result
    }
    
    static func minimum<T : Comparable>(array : [T])-> T {
        var minimum : T = array[0]
        
        for element in array {
            if element < minimum {
                minimum = element
            }
        }
        
        return minimum
    }
    
    static func maximum<T : Comparable>(array : [T])-> T {
        var maximum : T = array[0]
        
        for element in array {
            if element < maximum {
                maximum = element
            }
        }
        
        return maximum
    }
    
}