//
//  CategoryCell.swift
//  coder-swag2
//
//  Created by yasinkbas on 9.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
