//
//  ExtensionUiview.swift
//  TravelApp
//
//  Created by Toan on 7/26/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

   extension UIView {
       func roundCorners(corners: UIRectCorner, radius: CGFloat) {
            let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            layer.mask = mask
        }
    
    }
extension UIFont {
    
}

