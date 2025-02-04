//
//  AppDelegate.swift
//  HSPAnalytics
//
//  Created by VarinderSH on 02/03/2025.
//  Copyright (c) 2025 VarinderSH. All rights reserved.
//

import UIKit
import HSPAnalytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let orgToken = "eyJvcmdJZCI6IDY2ODQyMiwgImVudiI6ICJQcm9kdWN0aW9uIiwgImNsaWVudElkIjogImU2YjhhYzUzLThhMGEtNGJmYS1iYjdlLTEzZTYzMjE3YTkxZiIsICJjbGllbnRTZWNyZXQiOiAiMTQ5YWQ3MDUtODM3ZC00NjhkLTg1M2YtMDQ3NzI4YTg1NzNhIiwgInZlcnNpb24iOiAidjEifQ=="
    let api = "https://hsp-analytic-kwdph.ondigitalocean.app/hsp-analytic-v2/hsp-event"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let config = AnalyticConfig(api: api, orgToken: orgToken)
        HSPAnalytic.shared.startAyalytic(config: config)
//        EventLogger.shared.logEvent(eventType: .screenView, eventData: [:])
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

