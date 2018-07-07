//
//  ProductViewController.swift
//  Shopper
//
//  Created by SHOBHIT SHARMA on 07/07/18.
//  Copyright © 2018 SHOBHIT SHARMA. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
  
  // IBOutlets
  @IBOutlet var productCollectionView : UICollectionView!
  
  //Local variables
  var products = [Product]()
  var category : Category?
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    products = DataService.instance.getProductsFromCategories(category: category!)
    productCollectionView.delegate = self
    productCollectionView.dataSource = self
    navigationItem.title = category?.categoryName.uppercased()
  }
}

extension ProductViewController : UICollectionViewDataSource,UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return products.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if let productCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCollectionCell", for: indexPath) as? ProductCollectionViewCell {
      productCollectionViewCell.setUpDataForView(products[indexPath.row])
      return productCollectionViewCell
    }
    return ProductCollectionViewCell()
  }
  
}
