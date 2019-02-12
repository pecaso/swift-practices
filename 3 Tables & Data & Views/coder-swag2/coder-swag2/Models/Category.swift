//
//  Category.swift
//  coder-swag2
//
//  Created by yasinkbas on 9.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title:String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
