//
//  Category.swift
//  coder-swag
//
//  Created by Yasin on 12/1/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set)public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
