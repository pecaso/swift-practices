//
//  Extensions.swift
//  Treads
//
//  Created by yasinkbas on 8.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

extension Double {
    func metersToMiles(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return ((self / 1609.34) * divisor).rounded() / divisor
    }
}
