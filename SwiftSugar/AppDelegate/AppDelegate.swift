//
//  AppDelegate.swift
//  SwiftSugar
//
//  Created by Rui Peres on 03/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import UIKit


extension Person : DictionaryLiteralConvertible {
    
    
    class func convertFromDictionaryLiteral(persons:(String, String)...) -> Person
    {
        var person = Person()
        var x : String

        func JSONMapper(keyValue : (String, String))
        {
            switch keyValue {
            case ("name",let value)  : person.name = value
            case ("age",let value)  : person.age = value

            default : ()
            }
        }
        
        for (key,value : String) in persons{
            JSONMapper((key,value))
        }
        
        return person
    }
}

class Person : NSObject
{
    var name : String = ""
    var age : String = ""
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
        var person : Person = ["name":"Peter","age":"13"]
        
        
        println(person.name)
        
        return true
    }
    
}

