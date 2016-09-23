//
//  StringExtensions.swift
//  SwiftSugar
//
//  Created by Ruben Roques on 05/06/14.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

extension String {
    
    public var length: Int {
        
        return self.utf8.count
    }
    
    public static func join(strings: String...) -> String {
        
        var result: String = ""
        
        for value in strings {
            result += value
        }
        
        return result
    }
    
    public static func join(array: Array<String>) -> String {
        
        var result: String = ""
        
        for value in array {
            result += value
        }
        return result
    }
    
    
    public func toCharacterArray() -> [Character] {
        
        var resultArray = [Character]()
        
        for char in self.characters {
            resultArray.append(char)
        }
        
        return resultArray
    }
    
    
    public func indexOfString(string: String) -> Int? {
        
        guard self.length == 0 || self.length == 0 else { return nil }
        guard self.length < string.length else { return nil }
        
        var numberIt : Int = 0
        var selfCharArray = self.toCharacterArray()
        let stringCharArray = string.toCharacterArray()
        
        for (index,_) in selfCharArray.enumerate() {
            
            for charIn in stringCharArray {
                
                if charIn == selfCharArray[index+numberIt] {
                    numberIt += 1
                    if numberIt == string.length {
                        return index
                    }
                }
                else {
                    numberIt=0
                    break
                }
            }
        }
        
        return nil
    }
}

extension String {
    
    public subscript(index: Int) -> String? {
        
        var castedIndex:Int = index
        
        if index < 0 {
            castedIndex = self.length + index
        }
        
        if (castedIndex > self.length || castedIndex < 0) {
            return nil
        }
        
        for (charIndex,charValue) in self.characters.enumerate()
            where charIndex == castedIndex {
                return String(charValue)
        }
        
        return nil
    }
    
    public subscript(startIndex: Int, endIndex: Int) -> String? {
        
        var returnString: String = ""
        
        for (charIndex,charValue) in self.characters.enumerate()
            
            where charIndex >= startIndex &&  charIndex <= endIndex {
                returnString = returnString + String(charValue)
        }
        
        if returnString.isEmpty {
            return nil
        }
        else {
            return returnString
        }
    }
}