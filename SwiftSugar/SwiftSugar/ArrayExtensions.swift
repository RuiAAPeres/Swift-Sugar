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
        
        return Array(self[firstNumberOfElements..<self.count])
    }
    
    func numberTimesRepeated<U where U : Equatable>(elementInArray : U)-> Int {
        var repeated : Int = 0
        
        for element in self {
            if element as U == elementInArray {
                repeated++
            }
        }
        
        return repeated
    }
}