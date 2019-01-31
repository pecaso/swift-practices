//
//  DetailViewController.swift
//  CollectionView
//
//  Created by Yasinkbas on 1/31/19.
//  Copyright © 2019 Yasin Akbas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var selection:String!
    @IBOutlet private weak var detailsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsLabel.text = selection
        // Do any additional setup after loading the view.
    }
    


}
