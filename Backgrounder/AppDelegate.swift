//
//  AppDelegate.swift
//  Backgrounder
//
//  Created by David Baker on 3/2/16.
//  Copyright © 2016 Worth Baker. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var coordinator: AppCoordinator?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    
    self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
    
    let navCon = UINavigationController()
    self.coordinator = AppCoordinator(withNavigationController: navCon)
    self.coordinator?.start()
    
    self.window?.rootViewController = navCon
    self.window?.makeKeyAndVisible()
    
    // Override point for customization after application launch.
    return true
  }

}

