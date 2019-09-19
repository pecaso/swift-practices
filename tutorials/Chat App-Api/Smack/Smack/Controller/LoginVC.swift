//
//  LoginVC.swift
//  Smack
//
//  Created by Yasinkbas on 12/20/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    override func viewDidLoad() {
        
    }

    @IBAction func closePressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
}
