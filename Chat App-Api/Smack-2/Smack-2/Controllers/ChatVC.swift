//
//  ChatVC.swift
//  Smack-2
//
//  Created by yasinkbas on 18.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    // Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!) // allows scroll right and left
        self.view.addGestureRecognizer((self.revealViewController()?.tapGestureRecognizer())!) // allows click on view then closed
        
    }
    


}
