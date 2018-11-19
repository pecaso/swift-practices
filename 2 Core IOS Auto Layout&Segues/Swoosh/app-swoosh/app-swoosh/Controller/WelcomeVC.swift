//
//  ViewController.swift
//  app-swoosh
//
//  Created by Yasin on 11/17/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    @IBOutlet weak var swooshLbl: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* view coming from UIView on UIViewController
         * frame -> position and size
         *
         */
        
        /* with code
         *
         */
        
//        swooshLbl.frame = CGRect(x: view.frame.size.width / 2 - swooshLbl.frame.size.width / 2,
//                                 y: 50 ,
//                                 width: swooshLbl.frame.size.width,
//                                 height: swooshLbl.frame.size.height)
//        // get full screen because of the view
//        bgImg.frame = view.frame
        
        
    }
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }

    

}

