//
//  GradientView.swift
//  Smack
//
//  Created by Yasinkbas on 12/20/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    // @IBInspectable -> provides change values on storyboard
    @IBInspectable var topColor: UIColor = UIColor.blue {
        didSet {
            self.setNeedsLayout() // update this view. If you don't add this, no problem :)
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.green {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    // Override method that is running
    override func layoutSubviews() {
        // CA -> Core Animation
        // CG -> Core Graphic
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor] // you can add new colors if you want (:
        gradientLayer.startPoint = CGPoint(x: 0, y: 0) // [0,0][1,0]
        gradientLayer.endPoint   = CGPoint(x: 0, y: 1) // [0,1][1,1]
        gradientLayer.frame      = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0) // at the first layer 0
        
    }


}
