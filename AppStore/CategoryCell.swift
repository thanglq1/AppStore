//
//  CategoryCell.swift
//  AppStore
//
//  Created by ThangLQ on 4/11/17.
//  Copyright © 2017 ThangLQ. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Required init coder not implements")
    }
    
    let appCellId = "appCellId"
    
    let categoryLabel: UILabel = {
        let caterogyName = UILabel()
        caterogyName.text = "Best Apps"
        caterogyName.font = UIFont.systemFont(ofSize: 15)
        caterogyName.translatesAutoresizingMaskIntoConstraints = false
        return caterogyName
    }()
    
    var speratorView: UIView = {
        let sperator = UIView()
        sperator.backgroundColor = UIColor.darkGray
        sperator.translatesAutoresizingMaskIntoConstraints = false
        return sperator
    }()
    
    var appCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let apc = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        apc.translatesAutoresizingMaskIntoConstraints = false
        return apc
    }()
    
    func setupView() {
        
        appCollectionView.delegate = self
        appCollectionView.dataSource = self
        appCollectionView.register(AppCell.self, forCellWithReuseIdentifier: appCellId)
        appCollectionView.backgroundColor = UIColor.clear
        
        addSubview(categoryLabel)
        
        categoryLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        categoryLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        categoryLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        categoryLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        addSubview(appCollectionView)
        
        appCollectionView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        appCollectionView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        appCollectionView.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 8).isActive = true
        appCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    
        
        addSubview(speratorView)
        
        speratorView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        speratorView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        speratorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        speratorView.topAnchor.constraint(equalTo: appCollectionView.bottomAnchor).isActive = true
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: appCellId, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: frame.height)
    }
    
}

class AppCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("required init coder not implement")
    }
    
    let imageView: UIImageView = {
        let image = UIImage(named: "ic_clash")
        let iv = UIImageView(image: image)
        iv.layer.cornerRadius = 16
        iv.layer.masksToBounds = true
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Clash of clan new version"
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 2
        return label
    }()
    
    let categoryLabel: UILabel = {
        let category = UILabel()
        category.text = "Entertaiment"
        category.font = UIFont.systemFont(ofSize: 13)
        category.textColor = UIColor.gray
        return category
    }()
    
    let priceLabel: UILabel = {
        let price = UILabel()
        price.textColor = UIColor.gray
        price.text = "19.50$"
        price.font = UIFont.systemFont(ofSize: 13)
        return price
    }()
    
    func setupViews() {
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(categoryLabel)
        addSubview(priceLabel)
        
        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width)
        nameLabel.frame = CGRect(x: 0, y: frame.width + 2, width: frame.width, height: 40)
        categoryLabel.frame = CGRect(x: 0, y: frame.width + 42, width: frame.width, height: 20)
        priceLabel.frame = CGRect(x: 0, y: frame.width + 62, width: frame.width, height: 20)
    }
}
