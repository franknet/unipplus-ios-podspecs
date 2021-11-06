//
//  AppDelegate.swift
//  UNIP Plus Example
//
//  Created by José Franklin Silva Alves on 05/11/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        AppCoordinator(window: window).start()
        
        return true
    }


}

