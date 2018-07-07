//
//  Product.swift
//  Shopper
//
//  Created by SHOBHIT SHARMA on 06/07/18.
//  Copyright © 2018 SHOBHIT SHARMA. All rights reserved.
//

import Foundation

class Product {
  
  private (set) public var productName: String
  private (set) public var price: String
  private (set) public var productImage: String
  
  init(_ productName:String,_ price:String,_ productImage:String) {
    self.productName = productName
    self.price = price
    self.productImage = productImage
  }
}
