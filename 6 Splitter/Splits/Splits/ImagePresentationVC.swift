//
//  DetailViewController.swift
//  Splits
//
//  Created by Yasinkbas on 12/18/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ImagePresentationVC: UIViewController {
    @IBOutlet weak var itemImageView: UIImageView!
    
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        itemImageView.image = image
    }



}

