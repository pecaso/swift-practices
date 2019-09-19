//
//  ViewController.swift
//  CollectionView
//
//  Created by Yasinkbas on 1/30/19.
//  Copyright © 2019 Yasin Akbas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var addButton: UIBarButtonItem!
    @IBOutlet weak var trashButton: UIBarButtonItem!
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    @IBAction func deleteButtonPressed(_ sender: Any) {
        if let selected = collectionView.indexPathsForSelectedItems {
            let items = selected.map{$0.item}.sorted().reversed()
            for item in items {
                collectionData.remove(at: item)
            }
            collectionView.deleteItems(at: selected)
            navigationController?.isToolbarHidden = true
        }
    }
    @IBAction func addItem() {
        collectionView.performBatchUpdates({ // if i want add two items
            for _ in 0..<2 {
                let text = "\(collectionData.count + 1) 😂"
                collectionData.append(text)
                let index = IndexPath(row: collectionData.count - 1, section: 0)
                collectionView.insertItems(at: [index])
            }
         
        }, completion: nil)
    
    }
    
    var collectionData = ["1 🙈", "2 😬","3 🌚","4 😑","5 🎊","6 ☀️","7 🥈","8 🎭","9 🎗","10 😽","11 ❂","12 ➣"]

    @objc func refresh() {
        print("refreshed")
        collectionView.refreshControl?.endRefreshing()
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        addButton.isEnabled = !editing
        trashButton.isEnabled = editing
        collectionView.allowsMultipleSelection = editing
        let indexes = collectionView.indexPathsForVisibleItems
        for index in indexes {
            let cell = collectionView.cellForItem(at: index) as! CollectionViewCell
            cell.isEditing = editing
        }
        if !editing {
            navigationController?.isToolbarHidden = true
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // refresh control
        let refresh = UIRefreshControl()
        refresh.addTarget(self, action: #selector(self.refresh), for: UIControl.Event.valueChanged)
        collectionView.refreshControl = refresh
        // set up a 3-column collectionView
        let width = (view.frame.size.width - 20 ) / 3
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
        
        navigationItem.leftBarButtonItem = editButtonItem
        navigationController?.isToolbarHidden = true
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailSegue" {
            if let dest = segue.destination as? DetailViewController, let index = sender as? IndexPath {
//                let index = collectionView.indexPathsForSelectedItems?.first { // this controls for multiple selection
                dest.selection = collectionData[index.row]
            }
        }
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.titleLabel.text = collectionData[indexPath.row]
        cell.isEditing = isEditing
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if !isEditing {
            performSegue(withIdentifier: "toDetailSegue", sender: indexPath)
        } else {
            navigationController?.isToolbarHidden = false
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if isEditing {
            if let selected = collectionView.indexPathsForSelectedItems,
                selected.count == 0 {
                navigationController?.isToolbarHidden = false
            }
        }
    }
    
}
