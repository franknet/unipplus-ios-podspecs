//
//  UPIcons.swift
//  Pods-UNIP Plus Example
//
//  Created by José Franklin Silva Alves on 05/11/21.
//

import UIKit
 
public struct UPIcons {
    
    public enum Login: String {
        case CREDENTIALS = "ic_login_credential"
        
        public var icon: UIImage? {
            return UIImage(named: self.rawValue)
        }
    }
    
}
