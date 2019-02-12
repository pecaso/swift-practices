//
//  Product.swift
//  coder-swag2
//
//  Created by yasinkbas on 12.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
