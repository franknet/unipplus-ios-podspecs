//
//  AppCoordinator.swift
//  UNIP Plus Example
//
//  Created by José Franklin Silva Alves on 05/11/21.
//

import UIKit
import UPComponents

class AppCoordinator: UPCoordinator {
    
    var navigation: UINavigationController
    
    init(window: UIWindow?) {
        navigation = UINavigationController()
        
        window?.backgroundColor = .white
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
    }
    
    func start() {
        navigation.navigationBar.backgroundColor = .groupTableViewBackground
        pushViewController(ViewController(), animated: false)
    }
    
    func finish() {  }
}
