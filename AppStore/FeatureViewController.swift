//
//  ViewController.swift
//  AppStore
//
//  Created by ThangLQ on 4/11/17.
//  Copyright © 2017 ThangLQ. All rights reserved.
//

import UIKit

class FeatureViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let cellId = "cellId"
    var categories = [Categories]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
        categories = Categories.sampleData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        let category = categories[indexPath.item]
        cell.category = category
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 230)
    }
    
}



