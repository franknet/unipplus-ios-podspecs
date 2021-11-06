//
//  UPIcons.swift
//  Pods-UNIP Plus Example
//
//  Created by José Franklin Silva Alves on 05/11/21.
//

import UIKit

public class UPImages {
    
    public enum Login: String {
        
        case Credential = "ic_login_credential"
        
        public var image: UIImage? {
            let bundle = Bundle(for: UPImages.self)
            return UIImage(named: self.rawValue, in: bundle, compatibleWith: nil)
        }
    }
    
}


