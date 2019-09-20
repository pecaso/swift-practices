//
//  ProductViewModel.swift
//  RWClean
//
//  Created by Yasin Akbaş on 20.09.2019.
//  Copyright © 2019 Razeware, LLC. All rights reserved.
//

import UIKit

public final class ProductViewModel {

    
    // MARK: - Static Properties
    internal static let numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = Locale(identifier: "en_US")
        numberFormatter.numberStyle = .currency
        return numberFormatter
    }()
    
    
    // MARK: - Instance Properties
    public let product: Product
    
    public let descriptionText: String
    public let imageURL: URL?
    public let priceText: String
    public let titleText: String
    
    
    public init(product: Product) {
        self.product = product
        
        descriptionText = product.productDescription
        imageURL = product.imageURL
        
        if product.priceHourly > 0 {
            let price = ProductViewModel.numberFormatter.string(from: product.priceHourly as NSNumber)!
            priceText = "Only \(price) / hour"
        } else if product.priceSquareFoot > 0 {
            let price500SquareFoot = product.priceSquareFoot * 500
            let price = ProductViewModel.numberFormatter.string(from: price500SquareFoot as NSNumber)!
            priceText = "\(price) / 500 ft²"
        }else {
            priceText = "Contact Us for Pricing"
        }
        titleText = "Contact Us for pricing"
    }
    
    
}
