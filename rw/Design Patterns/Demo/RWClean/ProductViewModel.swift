//
//  ProductViewModel.swift
//  RWClean
//
//  Created by Yasin Akbaş on 20.09.2019.
//  Copyright © 2019 Razeware, LLC. All rights reserved.
//

import UIKit

@objc public protocol ProductViewModelView {
    @objc optional var productImageView: UIImageView      { get }
    @objc optional var productPriceLabel: UILabel         { get }
    @objc optional var productDescriptionLabel: UILabel   { get }
    @objc optional var productTitleLabel: UILabel         { get }
}



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

extension ProductViewModel {
    
    public func configure(_ view: ProductViewModelView) {
        _ = view.productImageView?.rw_setImage(url: imageURL)
        view.productPriceLabel!.text = priceText
        view.productDescriptionLabel!.text = titleText
    }
}
