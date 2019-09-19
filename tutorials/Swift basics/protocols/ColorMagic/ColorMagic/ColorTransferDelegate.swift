//
//  ColorTransferDelegate.swift
//  ColorMagic
//
//  Created by Yasin on 11/16/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName : String)
}
