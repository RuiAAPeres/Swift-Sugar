//
//  ArrayExtensions.swift
//  SwiftSugar
//
//  Created by Rui Peres on 07/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

extension Array {
    
    func take(take : Int) -> Array
    {
        var taken = Array()
        for var i=0; i < take; i++
        {
            taken.append(self[i])
        }
        
        return taken
    }
}