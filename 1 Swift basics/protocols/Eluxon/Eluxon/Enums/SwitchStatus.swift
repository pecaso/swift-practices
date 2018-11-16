//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Yasin on 11/16/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import Foundation

enum SwiftchStatus: Togglable {
    case on, off
    
    mutating func toggle() {
        switch self {
            case .on:
                self = .off
            case .off:
                self = .on
        }
    }
}
