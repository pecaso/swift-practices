//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Yasin on 11/17/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        /* layer coming with inherit from UIView */
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
        
    }

}
