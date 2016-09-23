//
//  SwiftSugar.swift
//  SwiftSugar
//
//  Created by Rui Peres on 17/07/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

public func zip<X,Y>(listX : [X], listY : [Y]) -> [(X,Y)] {
    
    if listX.count == 0 || listY.count == 0 {
        return []
    }
    
    return [(listX[0],listY[0])] + zip(listX.remove(1), listY.remove(1))
}