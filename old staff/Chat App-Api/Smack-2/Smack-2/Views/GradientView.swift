//
//  GradientView.swift
//  Smack-2
//
//  Created by yasinkbas on 19.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = UIColor.blue {
        didSet {
            self.setNeedsLayout() // update layout calls layoutsubviews
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.green {
        didSet {
            self.setNeedsLayout() // update layout calls layoutsubviews
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor, topColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }

}
