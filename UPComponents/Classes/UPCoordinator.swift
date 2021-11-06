//
//  UPCoordinator.swift
//  UPComponents
//
//  Created by José Franklin Silva Alves on 05/11/21.
//

import UIKit

public protocol UPCoordinator {
    
    var navigation: UINavigationController { get }
    
    func start()
    
    func finish()
    
}

extension UPCoordinator {
    
    public func popViewController(animated: Bool) {
        navigation.popViewController(animated: animated)
    }
    
    public func popToViewController(_ viewController: UIViewController, animated: Bool) {
        navigation.popToViewController(viewController, animated: animated)
    }
    
    public func pushViewController(_ viewController: UIViewController, animated: Bool) {
        navigation.pushViewController(viewController, animated: animated)
    }
}
