//
//  itemDetailViewController.swift
//  todoList
//
//  Created by Yasinkbas on 1/21/19.
//  Copyright © 2019 Yasin Akbas. All rights reserved.
//

import UIKit

protocol ItemDetailVCDelegate: class { // :class constraint for classes only
    func itemDetailViewControllerDidCancel(_ controller: ItemDetailVC)
    func itemDetailViewController(_ controller: ItemDetailVC, didFinishAdding item: ChecklistItem)
    func itemDetailViewController(_ controller: ItemDetailVC, didFinishEditing item: ChecklistItem)
}

class ItemDetailVC: UITableViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var cancelBarBtn: UIBarButtonItem!
    @IBOutlet weak var doneBarBtn: UIBarButtonItem!
    
    var itemToEdit: ChecklistItem?
    
    weak var delegate: ItemDetailVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
        if let item = itemToEdit {
            title = "Edit Item"
            textField.text = item.text
            doneBarBtn.isEnabled = true
        }
        

    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return false
//    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        textField.becomeFirstResponder()
    }
    
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
        delegate?.itemDetailViewControllerDidCancel(self)
    }
    
    @IBAction func done() {
//        navigationController?.popViewController(animated: true)
//        print("Contents of text field: \(textField.text!)")
        if let itemToEdit = itemToEdit {
            itemToEdit.text = textField.text!
            delegate?.itemDetailViewController(self, didFinishEditing: itemToEdit)
        } else {
            let item = ChecklistItem()
            item.text = textField.text!
            item.checked = false
            delegate?.itemDetailViewController(self, didFinishAdding: item)
        }
        
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text!
        let stringRange = Range(range, in:oldText)
        let newText = oldText.replacingCharacters(in: stringRange!, with: string)
        if newText.isEmpty {
            doneBarBtn.isEnabled = false
        } else {
            doneBarBtn.isEnabled = true
        }
        return true
        
    }
    


    

}
