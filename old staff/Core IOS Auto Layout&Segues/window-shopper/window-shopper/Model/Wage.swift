//
//  Wage.swift
//  window-shopper
//
//  Created by Yasin on 11/28/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
