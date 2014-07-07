//
//  AppDelegate.swift
//  SwiftSugar
//
//  Created by Rui Peres on 03/06/2014.
//  Copyright (c) 2014 SF. All rights reserved.
//

import UIKit

@objc protocol MyProtocol: NSObjectProtocol {
    func method()
}


class MyObject : NSObject {
    var delegate: MyProtocol
    
    init(delegate: MyProtocol) {
        self.delegate = delegate
        super.init()
    }
    
    func doSomethingWithDelegate() {
        delegate.method()
    }
}

class DelegateClass: NSObject, MyProtocol {
    func method () {
        for i in 1...10 {
            println("Hello!")
        }
    }
}


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
        let x = [1,2,3,4,5]
        let y = x.drop { $0 % 2 == 0 }

        println(y)
        return true
    }
}

