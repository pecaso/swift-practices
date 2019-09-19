//
//  Product.swift
//  coder-swag2
//
//  Created by yasinkbas on 12.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import Foundation

struct Product: Codable {
    public var title: String
    public var price: String
    public var image: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "title",price = "price", image = "image"
    }
    
}
