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
        return self.utf8.count
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
    
    
    func toCharacterArray()->[Character]{
        var resultArray = [Character]()
        
        for char in self.characters{
            resultArray.append(char)
        }
        
        return resultArray
    }
    
    
    func indexOfString(string : String)->Int?{
        if self.length == 0 || string.length == 0 {
            return nil
        }
        
        if self.length < string.length{
            return nil
        }
        
        var numberIt : Int = 0
        var selfCharArray = self.toCharacterArray()
        let stringCharArray = string.toCharacterArray()
        
        for (index,_) in selfCharArray.enumerate(){
            
            for charIn in stringCharArray{
                
                if charIn==selfCharArray[index+numberIt] {
                    numberIt++
                    if numberIt == string.length{
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
    
//    func reverse() -> String {
//        return self.toCharacterArray().reverse().reduce("", combine: {$0 + $1})
//    }
}

extension String{
    subscript(index: Int) -> String? {
        var castedIndex:Int = index
            if index<0{
                castedIndex = self.length + index
            }
            
            if (castedIndex > self.length || castedIndex<0){
                return nil
            }
            
            for (charIndex,charValue) in self.characters.enumerate(){
                if(charIndex == castedIndex){
                    return String(charValue)
                }
            }
            return nil
    }
    
    
    subscript(startIndex: Int,endIndex: Int) -> String? {
        var returnString :String = ""
            for (charIndex,charValue) in self.characters.enumerate(){
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