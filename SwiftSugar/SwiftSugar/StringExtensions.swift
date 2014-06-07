//
//  StringExtensions.swift
//  SwiftSugar
//
//  Created by Ruben Roques on 05/06/14.
//  Copyright (c) 2014 SF. All rights reserved.
//

import Foundation

extension String {
    
    var length :Int
    {
    get{
        return countElements(self)
    }
    }
    
    static func join(strings: String...)->String
    {
        var result: String=""
        for value in strings{
            result += value
        }
        return result
    }
    
    static func join(array: Array<String>)->String
    {
        var result: String=""
        for value in array{
            result += value
        }
        return result
    }
    
    
    func split(delimiter:Character = " ") -> String[]{
        
        var resultArray = String[]()
        var stringIterator :String=""
        
        for character in self{
            if delimiter == character{
                resultArray.append(stringIterator)
                stringIterator = ""
            }
            else{
                stringIterator += character
            }
        }
        
        if !stringIterator.isEmpty{
            resultArray.append(stringIterator)
        }
        return resultArray
    }
    
    
    func toCharacterArray()->Character[]{
        var resultArray = Character[]()
        
        for char in self{
            resultArray.append(char)
        }
        
        return resultArray
    }
    
    
    func indexOfString(string : String)->Int?{
        if countElements(self)==0 || countElements(string)==0 {
            return nil
        }
        
        if countElements(self) < countElements(string){
            return nil
        }
        
        var numberIt : Int = 0
        var selfCharArray = self.toCharacterArray()
        var stringCharArray = string.toCharacterArray()
        
        for (index,charOut) in enumerate(selfCharArray){
            
            for charIn in stringCharArray{
                
                if charIn==selfCharArray[index+numberIt] {
                    numberIt++
                    if numberIt==countElements(string){
                        return index
                    }
                }
                else{
                    numberIt=0
                    break
                }
            }
        }
        return nil
    }
    
    func reverse() -> String {
        return self.toCharacterArray().reverse().reduce("", combine: {$0 + $1})
    }
}

extension String{
    subscript(index: Int) -> String? {
        var castedIndex:Int = index
            if index<0{
                castedIndex = countElements(self)+index
            }
            
            if (castedIndex>countElements(self) || castedIndex<0){
                return nil
            }
            
            for (charIndex,charValue) in enumerate(self){
                if(charIndex == castedIndex){
                    return String(charValue)
                }
            }
            return nil
    }
    
    
    subscript(startIndex: Int,endIndex: Int) -> String? {
        var returnString :String = ""
            for (charIndex,charValue) in enumerate(self){
                if(charIndex >= startIndex &&  charIndex <= endIndex){
                    returnString = returnString + String(charValue)
                }
            }
            
            if returnString.isEmpty{
                return nil
            }
            else{
                return returnString
            }
    }
}