//
//  RoundedButton.swift
//  Smack
//
//  Created by Yasinkbas on 12/23/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 6.0 {
        didSet{
            self.setupView()
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
        
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }


}
