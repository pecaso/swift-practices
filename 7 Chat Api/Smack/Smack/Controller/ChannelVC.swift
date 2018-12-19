//
//  ChannelVC.swift
//  Smack
//
//  Created by Yasinkbas on 12/19/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Customize reveal width
        // if you want more see: SW.h -> 642
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }
    



}
