//
//  AppDelegate.swift
//  GXSwift
//
//  Created by sunguangxin on 2017/3/29.
//  Copyright © 2017年 sunguangxin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var mainNaviVC: GXPhoneBaseNaviVC?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("程序第一次启动!")
        sleep(2)
        window = UIWindow.init(frame: UIScreen.main.bounds)
        let mainTabBarVC = GXPhoneBaseTabBarVC()
        self.mainNaviVC = GXPhoneBaseNaviVC.init(rootViewController:mainTabBarVC)
        window?.rootViewController = mainNaviVC
        window?.backgroundColor = UIColor.black
        window?.makeKeyAndVisible()
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        print("应用从活动状态进入到非活动状态!")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("应用进入到后台时候调用的方法!")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("应用进入到前台时候调用的方法!")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("应用进入前台并处于活动状态时候调用!")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        print("应用被终止的状态!")
    }
    
    
}

