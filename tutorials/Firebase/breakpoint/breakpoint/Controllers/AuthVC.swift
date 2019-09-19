//
//  AuthVC.swift
//  breakpoint
//
//  Created by yasinkbas on 20.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInWithEmailButtonWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!,animated: true, completion: nil)
    }
    
    @IBAction func googleSignInButtonWasPressed(_ sender: Any) {
    }
    @IBAction func facebookSignInButtonWasPressed(_ sender: Any) {
    }
    
}
