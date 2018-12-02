//
//  ProductCellCollectionViewCell.swift
//  coder-swag
//
//  Created by Yasin on 12/1/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateVIews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
        
    }
    
    
    
}
