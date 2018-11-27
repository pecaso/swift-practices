//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Yasin on 11/27/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField {

   
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.2489833048)
        layer.cornerRadius = 5.0
        textAlignment = .center
        textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 0.5598779965)])
            attributedPlaceholder = place
            
        }
        
        
    }

}
