//
//  ViewController.swift
//  realmDemo
//
//  Created by yasinkbas on 3.04.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        // MARK:- Realm
        // MARK: write data
        let person = Person()
        person.name = "Julie"
        person.gender = "Female"
        person.country = "Turkey"

        try! realm.write {
            realm.add(person)
        }
        
        // MARK: retrieve data
        let results = realm.objects(Person.self).filter("name = 'Joe'").first
        
        
        // MARK: update data
        try! realm.write {
            results?.name = "Yasin"
        }
    }
}

