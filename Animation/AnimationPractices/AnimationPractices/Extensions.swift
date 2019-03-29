//
//  Extensions.swift
//  AnimationPractices
//
//  Created by yasinkbas on 28.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit


extension CGFloat {
    static func random() ->CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func randomColor() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
    static func randomColor(with alpha:CGFloat) -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: alpha)
    }
}

extension UIButton {
    func wiggle() {
        let wiggleAnim = CABasicAnimation(keyPath: "position")
        wiggleAnim.duration = 0.05
        wiggleAnim.repeatCount = 5
        wiggleAnim.autoreverses = true
        wiggleAnim.fromValue = CGPoint(x: self.center.x - 4, y: self.center.y)
        wiggleAnim.toValue = CGPoint(x: self.center.x + 4, y: self.center.y)
        layer.add(wiggleAnim, forKey: "position")
    }
    
    func dim(){
        UIView.animate(withDuration: 0.15, animations: {
            self.alpha = 0.50
        }) { (finished) in
            UIView.animate(withDuration: 0.15, animations: {
                self.alpha = 1.0
            })
        }
    }
}
