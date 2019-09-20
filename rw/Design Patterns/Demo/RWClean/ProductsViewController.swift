//
//  ProductsViewController.swift
//  RWClean
//
//  Created by Yasin Akbaş on 19.09.2019.
//  Copyright © 2019 Razeware, LLC. All rights reserved.
//

import UIKit

public class ProductsViewController: UIViewController {
    
    // MARK: - Injections
    internal var networkClient = NetworkClient.shared
    
    internal var productType: Product.ProductType! {
        didSet {
            title = productType.title
        }
    }
    
    // MARK: - Instance Properties
    internal var productViewModels: [ProductViewModel] = []
    
    // MARK: - Outlets
    @IBOutlet internal var collectionView: UICollectionView! {
        didSet {
            let refreshControl = UIRefreshControl()
            refreshControl.addTarget(self, action: #selector(loadProducts), for: .valueChanged)
            collectionView.refreshControl = refreshControl
            let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
            collectionView.collectionViewLayout = CollectionViewCenterFlowLayout(layout: layout)
        }
    }
    
    @objc internal func loadProducts() {
        collectionView.refreshControl?.beginRefreshing()
        networkClient.getProducts(forType: productType, success: { [weak self] products in
            guard let self = self else { return }
            self.productViewModels = products.map { ProductViewModel(product: $0) }
            self.collectionView.reloadData()
            self.collectionView.refreshControl?.endRefreshing()
        }) { [weak self] error in
            print("Product download failed: \(error)")
            guard let self = self else { return }
            self.collectionView.refreshControl?.endRefreshing()
        }
    }
    
    // MARK: - view lifecycle
    public override func viewDidLoad() {
        super.viewDidLoad()
        loadProducts()
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        guard let selectedItem = collectionView.indexPathsForSelectedItems else { return }
        selectedItem.forEach { collectionView.deselectItem(at: $0, animated: false) }
    }
    
    // MARK: - Segue
    public override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? ProductDetailsViewController else { return }
        let indexPath = collectionView.indexPathsForSelectedItems?.first!
        viewController.productViewModel = productViewModels[indexPath!.row]
    }
}

// MARK: - UICollectionViewDataSource
extension ProductsViewController: UICollectionViewDataSource {
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productViewModels.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIdentifier = "ProductCell"
        
        let productViewModel = productViewModels[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! ProductCollectionViewCell
        cell.label.text = productViewModel.titleText
        cell.imageView.rw_setImage(url: productViewModel.imageURL)
        
        return cell
    }
}
