//
//  ViewController.swift
//  mvc-ifyme-capn
//
//  Created by Yasinkbas on 12/16/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class Controller: UIViewController {

    @IBOutlet weak var IphoneNameLabel: UILabel!
    @IBOutlet weak var IphoneColorLabel: UILabel!
    @IBOutlet weak var IphonePriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appleProduct            = SamsungProduct(name: "iPhone X", color: "Space Gray", price: 999.99)
        
        IphoneNameLabel.text        = appleProduct.name
        IphoneColorLabel.text       = "in \(appleProduct.color)"
        IphonePriceLabel.text       = "$\(appleProduct.price)"
    }

}

