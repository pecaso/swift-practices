//
//  ChecklistItem.swift
//  todoList
//
//  Created by Yasinkbas on 1/19/19.
//  Copyright © 2019 Yasin Akbas. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
    
    
}
