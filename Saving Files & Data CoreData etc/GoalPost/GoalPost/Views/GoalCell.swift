//
//  GoalCell.swift
//  GoalPost
//
//  Created by yasinkbas on 26.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    @IBOutlet weak var completionView: UIView!
    
    func configureCell(goal:Goal) {
        self.goalDescriptionLabel.text = goal.goalDescription
        self.goalTypeLabel.text = goal.goalType
        self.goalProgressLabel.text = String(goal.goalProgress)
        
        self.completionView.isHidden = !(goal.goalProgress == goal.goalCompletionValue)
    }
    
    

}
