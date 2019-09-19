//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Yasin on 11/27/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.7985070634)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
   
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
        
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.2489833048)
        layer.cornerRadius = 5.0
        textAlignment = .center
        textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        clipsToBounds = true
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 0.5598779965)])
            attributedPlaceholder = place
            
        }
    }

}
