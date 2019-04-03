//
//  CustomizeButton.swift
//  AnimationPractices
//
//  Created by yasinkbas on 28.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit
@IBDesignable
class CustomizeButton: UIButton {

    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.randomColor().cgColor
       
    }

}
