//
//  ChannelVC.swift
//  Smack
//
//  Created by Yasinkbas on 12/19/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    //Outlet
    @IBOutlet weak var loginBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Customize reveal width
        // if you want more see: SW.h -> 642
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    


}
