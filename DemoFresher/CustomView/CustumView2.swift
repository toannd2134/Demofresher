
//
//  CustumView2.swift
//  DemoFresher
//
//  Created by Toan on 7/27/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class CustumView2: UIView {

    override func layoutSubviews() {
             super.layoutSubviews()

       self.roundCorners(corners: [.topLeft, .bottomLeft], radius: 30)
       }

}
