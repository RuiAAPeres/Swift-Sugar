//
//  ArrayExtensions.swift
//  SwiftSugar
//
//  Created by Rui Peres on 03/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

func take<T where T:ArrayType>(array : T, take : Int) -> T
{
    var taken = T()
    for var i=0; i < take; i++
    {
        taken.append(array[i])
    }
    
    return taken
}