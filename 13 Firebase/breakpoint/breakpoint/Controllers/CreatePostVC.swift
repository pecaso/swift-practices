//
//  CreatePostVC.swift
//  breakpoint
//
//  Created by yasinkbas on 23.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit
import Firebase

class CreatePostVC: UIViewController {
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
        
    }
    

    @IBAction func sendButtonWasPressed(_ sender: Any) {
        guard textView.text != nil && textView.text != "Say something here..." else { return }
        sendButton.isEnabled = false
        DataService.instance.uploadPost(withMessage: textView.text, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil) { (isComplete) in
            if isComplete {
                self.sendButton.isEnabled = true
                self.dismiss(animated: true, completion: nil)
            } else {
                self.sendButton.isEnabled = true
                print("There was an error!")
            }
        }
        
            
        
    }
    @IBAction func closeButtonWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension CreatePostVC: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
        
    }
}
