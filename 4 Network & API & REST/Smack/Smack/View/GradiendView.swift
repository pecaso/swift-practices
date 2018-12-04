//
//  GradiendView.swift
//  Smack
//
//  Created by Yasin on 12/4/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

@IBDesignable
class GradiendView: UIView {

    @IBInspectable var topColor: UIColor = UIColor.blue {
        didSet {
           self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.green {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor,bottomColor.cgColor,topColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    

}
