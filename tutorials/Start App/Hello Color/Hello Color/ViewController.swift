//
//  ViewController.swift
//  Hello Color
//
//  Created by Yasinkbas on 12/15/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var darkGray = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeColor(_ sender: Any) {
        if darkGray {
            view.backgroundColor = UIColor.white
            darkGray = false
        } else {
            view.backgroundColor = UIColor.darkGray
            darkGray = true
        }
    }
    
}

