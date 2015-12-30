//
//  SequenceTypeExtensions.swift
//  SwiftSugar
//
//  Created by Rui Peres on 07/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

extension SequenceType where Generator.Element : Equatable {
    func numberTimesRepeated(elementInArray : Generator.Element)-> Int {
        var repeated : Int = 0
        
        for element in self
            where element == elementInArray {
                repeated++
        }
        
        return repeated
    }
}