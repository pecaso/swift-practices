//
//  ProductVC.swift
//  coder-swag
//
//  Created by Yasin on 12/2/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
 
    
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateVIews(product: product)
            return cell
        }
            return ProductCell()
        
    }
    
    func initProduct(category: Category) {
        self.products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
        
    }

}
