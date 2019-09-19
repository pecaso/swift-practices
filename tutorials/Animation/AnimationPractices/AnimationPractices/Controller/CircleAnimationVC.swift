//
//  CircleAnimationVC.swift
//  AnimationPractices
//
//  Created by yasinkbas on 29.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class CircleAnimationVC: UIViewController {
    var circle = UIView()
    var pizza = UILabel()
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.randomColor()
        makeCircle()
        
        UIView.animate(withDuration: 0.5) {
            let translate = CGAffineTransform(translationX: 100, y: 100)
            let scale = CGAffineTransform(scaleX: 5, y: 5)
            let rotate = CGAffineTransform(rotationAngle: 360)

            self.circle.transform = CGAffineTransform(scaleX: 5, y: 5)
            self.circle.transform = translate.concatenating(scale)
            self.circle.alpha = 0.3
            self.pizza.text = "Welcome"
            self.pizza.frame = CGRect(x: self.view.center.x, y: self.view.center.y, width: 300, height: 30)
            self.pizza.center = self.view.center
            self.pizza.textAlignment = NSTextAlignment(.center)
            self.pizza.font = UIFont(name: self.pizza.font.fontName, size: 25)
            self.pizza.textColor = UIColor.randomColor()
            
            
        }
        
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { (timer) in
            let changeColor = CATransition()
            changeColor.type = CATransitionType.fade

            changeColor.duration = 5.0
            
            CATransaction.begin()
            
//            CATransaction.setCompletionBlock {
//                self.pizza.textColor = UIColor.randomColor()
//                self.pizza.layer.add(changeColor, forKey: nil)
//            }
            self.pizza.textColor = UIColor.randomColor()
            self.pizza.layer.add(changeColor, forKey: nil)
            self.view.backgroundColor = UIColor.randomColor()
            self.view.layer.add(changeColor, forKey: nil)
            
            CATransaction.commit()
            
        }
        
//        let translate = CGAffineTransform(translationX: 100, y: 100)
//        let rotate = CGAffineTransform(rotationAngle: 360)
//        let scale = CGAffineTransform(scaleX: 5, y: 5)
        
    }
    

    
    func makeCircle() {
        circle = UIView(frame: CGRect(x: self.view.center.x, y: self.view.center.y, width: 100, height: 100))
        circle.center = self.view.center
        circle.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        circle.layer.borderColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        circle.layer.cornerRadius = circle.frame.width / 2
        circle.layer.borderWidth = 5.0
        
        pizza = UILabel(frame: CGRect(x: circle.frame.origin.x, y: circle.frame.origin.y, width: 30, height: 30))
        pizza.center = circle.center
        pizza.text = "🍕"
        pizza.font = UIFont(name: pizza.font.fontName, size: 66)
        
        self.view.addSubview(circle)
        self.view.addSubview(pizza)
        
        
    }
    

}
