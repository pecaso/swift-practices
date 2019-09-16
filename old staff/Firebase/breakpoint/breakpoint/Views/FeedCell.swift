//
//  FeedCell.swift
//  breakpoint
//
//  Created by yasinkbas on 25.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLabel.text = email
        self.contentLabel.text = content
    }
    
    

}
