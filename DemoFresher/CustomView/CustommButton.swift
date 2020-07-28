//
//  CustommButton.swift
//  DemoFresher
//
//  Created by Toan on 7/27/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class CustommButton: UIButton {

  
    override func draw(_ rect: CGRect) {
        self.applyGradient(withColours: [.greenColor(),.darkGreenColor()], gradientOrientation: .vertical)
        
    }


}
