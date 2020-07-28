
//
//  CustomView.swift
//  TravelApp
//
//  Created by Toan on 7/26/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class CustomView: UIView {
   
   override func layoutSubviews() {
          super.layoutSubviews()

    self.roundCorners(corners: [.topRight, .bottomLeft], radius: 60)
    }

}
