//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by yasinkbas on 28.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.bindToKeyboard()
        shortTermButton.setSelectedAlpha()
        longTermButton.setDeselectedAlpha()
        goalTextView.delegate = self

    }
    @IBAction func nextButtonWasPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTextView.text, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
            
            
        }
        
    }
    
    @IBAction func shotTermButtonWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermButton.setSelectedAlpha()
        longTermButton.setDeselectedAlpha()
  
    }
    
    @IBAction func longTermButtonWasPressed(_ sender: Any) {
        goalType = .longTerm
        shortTermButton.setDeselectedAlpha()
        longTermButton.setSelectedAlpha()
        
    }
    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = UIColor(red:0.00, green:0.68, blue:0.71, alpha:1.0)
    }
    
}
