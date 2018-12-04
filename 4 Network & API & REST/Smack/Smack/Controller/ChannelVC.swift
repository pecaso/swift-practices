//
//  ChannelVC.swift
//  Smack
//
//  Created by Yasin on 12/3/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }


}
