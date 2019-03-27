//
//  ProductCell.swift
//  coder-swag2
//
//  Created by yasinkbas on 12.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.image)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
