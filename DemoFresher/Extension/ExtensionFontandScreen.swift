//
//  ExtensionFont.swift
//  DemoFresher
//
//  Created by Toan on 7/27/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit
extension UIFont {
    
    enum fontChoice {
        case Thonburi
        case  Helvetica
      
    }
     class func  mainFont(font : fontChoice, size : CGFloat) -> UIFont {
        switch font {
        case .Thonburi:
            return UIFont(name:  "Thonburi", size: size)!
        default:
            return UIFont(name:  "Helvetica", size: size)!
        }
    }
}
extension UIScreen {
    class func  screenWidth () -> CGFloat {
        return UIScreen.main.bounds.width
    }
    class func  screenHeight () -> CGFloat {
           return UIScreen.main.bounds.height
       }
}

