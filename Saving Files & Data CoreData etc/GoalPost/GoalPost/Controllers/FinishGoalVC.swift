//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by yasinkbas on 1.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit
import CoreData



class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalButton: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type:GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalButton.bindToKeyboard()
        pointsTextField.delegate = self

       
    }
    
    @IBAction func createGoalButtonPressed(_ sender: Any) {
        // Pass data into core data goal model
        if pointsTextField.text != "" {
            self.save { (complete) in
                if complete{
                    dismiss(animated: true, completion: nil)
                }
            }
        }
        
        
        
    }
    
    @IBAction func backButtonWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) ->() ) {
        guard let manageContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: manageContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try manageContext.save()
            print("successfully saved data")
            completion(true)
        }catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
    

}









