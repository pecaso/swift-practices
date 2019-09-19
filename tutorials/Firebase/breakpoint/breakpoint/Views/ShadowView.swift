//
//  ShadowView.swift
//  breakpoint
//
//  Created by yasinkbas on 20.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    func setUp() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = #colorLiteral(red: 0.431372549, green: 1, blue: 0.7490196078, alpha: 1)
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.cornerRadius = CGFloat(20)
        
    }
    
    override func awakeFromNib() {
        setUp()
    }
}
