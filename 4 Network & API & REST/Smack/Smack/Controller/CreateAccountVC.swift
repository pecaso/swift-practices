//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Yasin on 12/4/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    

 

}
