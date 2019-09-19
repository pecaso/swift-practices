//
//  Category.swift
//  coder-swag2
//
//  Created by yasinkbas on 9.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import Foundation

struct Category: Codable {
    public var title: String
    public var image: String
    public var products: [Product]
    
    private enum CodingKeys: String,CodingKey {
        case title = "title", image = "image", products = "products"
    }
    
}
