//
//  ChatVC.swift
//  Smack
//
//  Created by Yasinkbas on 12/19/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    @IBOutlet weak var menuBtn: UIButton!
    
    // Outlet
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!) // pan enabled
        self.view.addGestureRecognizer((self.revealViewController()?.tapGestureRecognizer())!) // tap enabled
        
        
    }
    


}
