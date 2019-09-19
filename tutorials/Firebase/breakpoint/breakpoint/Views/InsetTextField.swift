//
//  InsetTextField.swift
//  breakpoint
//
//  Created by yasinkbas on 20.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit


class InsetTextField: UITextField {
    
    private var padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    
    // withoud editing modifying
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    // typing text
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    // place holder
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    func setupView() {
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!,attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)])
    }
    
    override func awakeFromNib() {
        setupView()
    }

}
