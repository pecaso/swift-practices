//
//  DataServices.swift
//  coder-swag
//
//  Created by Yasin on 12/1/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
    Category(title: "SHITRS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Logo Snapback", price: "$20", imageName: "hat04.png"),
    ]
    
    private let hoodies = [
        Product(title: "Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Hoodie Black", price: "$32", imageName: "hoodie04.png"),

    ]
    
    private let shirts = [
        Product(title: "Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate", price: "$18", imageName: "shirt04.png"),
        Product(title: "Logo Shirt Black", price: "$18", imageName: "shirt05.png"),
        
    ]
    
    private let digitalGoods = [Product]()
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
           return getShirts()
            
        case "HATS":
           return getHats()
            
        case "HOODIES":
           return getHoodies()
            
        case "DIGITAL":
           return getDigitalGoods()
            
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    
    func getCategories() -> [Category] {
        
        return categories
    }
}

