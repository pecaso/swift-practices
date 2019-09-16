//
//  ViewController.swift
//  Eluxon
//
//  Created by Yasin on 11/16/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var onOffLbl: UILabel!
    @IBOutlet weak var toggleBtn: UIButton!
    
    var switchStatus: SwiftchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func toggleBtnWasPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off{
            toggleBtn.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            onOffLbl.text = "🌚 OFF 🌚"
            onOffLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        else {
            toggleBtn.setImage(UIImage(named: "onBtn"), for: .normal)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            onOffLbl.text = "☀️ ON ☀️"
            onOffLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    

}

