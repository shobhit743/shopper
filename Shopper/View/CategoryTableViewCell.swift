//
//  CategoryTableViewCell.swift
//  Shopper
//
//  Created by SHOBHIT SHARMA on 07/07/18.
//  Copyright © 2018 SHOBHIT SHARMA. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
  
  @IBOutlet var bgImage:UIImageView!
  @IBOutlet var categoryLabel:UILabel!
  
  public func setUpDataForViews(category:Category){
    bgImage.image = UIImage(named: category.imageName)
    categoryLabel.text = category.categoryName
  }
  
}
