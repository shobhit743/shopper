//
//  ProductCollectionViewCell.swift
//  Shopper
//
//  Created by SHOBHIT SHARMA on 07/07/18.
//  Copyright © 2018 SHOBHIT SHARMA. All rights reserved.
//

import UIKit
class ProductCollectionViewCell: UICollectionViewCell {
  
  
  @IBOutlet var bgImage:UIImageView!
  @IBOutlet var productTitle : UILabel!
  @IBOutlet var productPrice : UILabel!
  
  public func setUpDataForView(_ product:Product){
    bgImage.image = UIImage(named: product.productImage)
    productTitle.text = product.productName
    productPrice.text = product.price
  }
  
}
