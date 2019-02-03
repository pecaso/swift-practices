//
//  SamsungProduct.swift
//  mvc-ifyme-capn
//
//  Created by Yasinkbas on 12/16/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import Foundation

class SamsungProduct {
    public private(set) var name    : String
    public private(set) var color   : String
    public private(set) var price   : Double
    
    init(name:String,color:String,price:Double) {
        self.name   = name
        self.color  = color
        self.price  = price
    }
}
