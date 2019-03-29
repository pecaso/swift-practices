//
//  ViewController.swift
//  AnimationPractices
//
//  Created by yasinkbas on 28.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var randomButton: UIButton!
    @IBOutlet weak var wiggleButton: UIButton!
    @IBOutlet weak var dimButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
    }
    
    func setColor() {
        randomButton.backgroundColor = UIColor.randomColor()
        randomButton.setTitleColor(UIColor.randomColor(), for: .normal)
        wiggleButton.backgroundColor = UIColor.randomColor()
        wiggleButton.setTitleColor(UIColor.randomColor(), for: .normal)
        dimButton.backgroundColor = UIColor.randomColor()
        dimButton.setTitleColor(UIColor.randomColor(), for: .normal)
    }

    @IBAction func randomButtonWasPressed(_ sender: Any) {
        print("screen main bounds width:\(UIScreen.main.bounds.width) \nscreen main bounds height: \(UIScreen.main.bounds.height) ")
        let positon = CGRect(x: CGFloat(arc4random_uniform(UInt32(UIScreen.main.bounds.width))), y: CGFloat(arc4random_uniform(UInt32(UIScreen.main.bounds.height))), width: randomButton.frame.width, height: randomButton.frame.height)
        self.wiggleButton.isHidden = true
        self.dimButton.isHidden = true
        
        UIView.animate(withDuration: 0.5) {
            self.randomButton.frame = positon
            self.view.backgroundColor = UIColor.randomColor()
            self.randomButton.backgroundColor = UIColor.randomColor()
            self.randomButton.setTitleColor(UIColor.randomColor(), for: .normal)
        }
        
    }
    @IBAction func wiggleButtonWasPressed(_ sender: Any) {
        wiggleButton.wiggle()
        
    }
    @IBAction func dimButtonWasPressed(_ sender: Any) {
        dimButton.dim()
    }
    
}

