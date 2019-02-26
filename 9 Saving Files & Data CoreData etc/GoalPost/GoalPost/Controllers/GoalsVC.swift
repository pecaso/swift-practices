//
//  GoalsVC.swift
//  GoalPost
//
//  Created by yasinkbas on 26.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addGoalButtonWasPressed(_ sender: Any) {
        print("button was pressed")
    }
    
}

