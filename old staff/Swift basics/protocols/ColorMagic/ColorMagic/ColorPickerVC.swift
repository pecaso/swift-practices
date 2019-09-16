//
//  ColorPickerVCViewController.swift
//  ColorMagic
//
//  Created by Yasin on 11/16/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func colorBtnWasPressed(sender: UIButton){
        if delegate != nil {
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel?.text)!)
        self.navigationController?.popViewController(animated: true)
            
        }
    }
    
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
