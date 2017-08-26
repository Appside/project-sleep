//
//  AppDelegate.swift
//  SleepProject
//
//  Created by Jean-Charles Koch on 26/08/2017.
//  Copyright © 2017 Jean-Charles Koch. All rights reserved.
//

import UIKit
import Material

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let MainViewControllers = [Graph1ViewController(),Graph2ViewController(),Graph3ViewController()]
        let TabsNavigation = AppTabsController(viewControllers: MainViewControllers)
        let ToolbarNavigation = AppToolbarController(rootViewController: TabsNavigation)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = ToolbarNavigation
        window!.makeKeyAndVisible()
        
        return true
    }

}

