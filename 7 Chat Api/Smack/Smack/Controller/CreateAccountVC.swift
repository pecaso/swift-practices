//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Yasinkbas on 12/21/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    


}
