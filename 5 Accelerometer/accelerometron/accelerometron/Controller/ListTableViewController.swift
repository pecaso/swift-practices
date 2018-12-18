//
//  ViewController.swift
//  accelerometron
//
//  Created by Yasinkbas on 12/17/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell
            else{ return UITableViewCell() }
        cell.configureCell(withImage: images[indexPath.row] ?? UIImage(named: "1"), andDescription: names[indexPath.row])
        return cell
        
    }


}

