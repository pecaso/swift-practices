//
//  CreateAccountVC.swift
//  Smack-2
//
//  Created by yasinkbas on 19.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        // perform unwind to channel segue
        performSegue(withIdentifier: TO_UNWIND_CHANNELS, sender: nil)
    }
    

}
