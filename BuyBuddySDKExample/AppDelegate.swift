//
//  AppDelegate.swift
//  BuyBuddySDKExample
//
//  Created by MKB on 31/05/2017.
//  Copyright © 2017 MKB. All rights reserved.
//

import UIKit
import BuyBuddyKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, BuyBuddyInvalidTokenDelegate, BuyBuddyApiErrorDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        BuyBuddyApi.sharedInstance.sandBoxMode(isActive: true)
        BuyBuddyApi.sharedInstance.set(errorDelegate: self)
        BuyBuddyApi.sharedInstance.set(invalidTokenDelegate: self)
        BuyBuddyApi.sharedInstance.set(accessToken: "Eo6L4FCRRU+/tzIWEBlOYjOrewLxCkqjmPyYdbOH8h1p3vxcTrVNgJu+k430Ns1NKh5huFgjQse/b+tOIwDgJA==")
        return true
    }

    func BuyBuddyApiDidErrorReceived(_ errorCode: NSInteger, errorResponse: BuyBuddyBase?) {
        print(errorCode)
        if(errorResponse != nil) {
            print(errorResponse!)
        }
    }
    
    func tokenExpired() {
    
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

