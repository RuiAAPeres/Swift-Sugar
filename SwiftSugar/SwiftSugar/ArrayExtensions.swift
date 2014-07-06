//
//  ArrayExtensions.swift
//  SwiftSugar
//
//  Created by Rui Peres on 07/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

extension Array {
    
    func take() -> Array
    {
        return self.take(self.count-1)
    }
    
    func take(take : Int) -> Array
    {
        var taken = Array()
        for index in 0..self.count-1
        {
            taken.append(self[index])
        }
        
        return taken
    }
}