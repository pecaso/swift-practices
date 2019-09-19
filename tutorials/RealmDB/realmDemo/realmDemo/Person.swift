//
//  Cat.swift
//  realmDemo
//
//  Created by yasinkbas on 3.04.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import Foundation
import RealmSwift

class Person: Object {
    
    @objc dynamic var name: String?
    @objc dynamic var country: String?
    @objc dynamic var gender: String?
}
