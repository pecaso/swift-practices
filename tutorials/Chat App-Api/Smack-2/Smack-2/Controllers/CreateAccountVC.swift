//
//  CreateAccountVC.swift
//  Smack-2
//
//  Created by yasinkbas on 19.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    // Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        // perform unwind to channel segue
        performSegue(withIdentifier: TO_UNWIND_CHANNELS, sender: nil)
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let pass = passwordTxt.text , passwordTxt.text != "" else {return}
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success {
                        print("logged in user!")
                        print(AuthService.instance.authToken)
                        print(AuthService.instance.userEmail)
                    }
                })
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
        
    }
    
    @IBAction func pickBackgroundColorPressed(_ sender: Any) {
        
    }
    
}
