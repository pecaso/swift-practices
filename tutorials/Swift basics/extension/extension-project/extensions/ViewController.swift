//
//  ViewController.swift
//  extensions
//
//  Created by Yasin on 11/15/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorizeBtn: UIButton!
    @IBOutlet weak var wiggleBtn: UIButton!
    @IBOutlet weak var dimBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func colorizeBtnWasPressed(_ sender: Any) {
        colorizeBtn.colorize()
    }
    @IBAction func wiggleBtnWasPressed(_ sender: Any) {
        wiggleBtn.wiggle()
    }
    @IBAction func dimBtnWasPressed(_ sender: Any) {
        dimBtn.dim()
        dimBtn.wiggle()
    }
    


}

