//
//  Wage.swift
//  window-shopper2
//
//  Created by yasinkbas on 8.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
