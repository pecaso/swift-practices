//
//  Helpers.swift
//  extensions
//
//  Created by Yasin on 11/15/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

func generate3RandomNumbers(quantity: Int) -> [CGFloat] {
    var randomNumberArray = [CGFloat]()
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}
