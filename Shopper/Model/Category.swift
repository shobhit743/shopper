//
//  Category.swift
//  Shopper
//
//  Created by SHOBHIT SHARMA on 06/07/18.
//  Copyright © 2018 SHOBHIT SHARMA. All rights reserved.
//

import Foundation

struct Category {
  
  private (set) public var imageName : String
  private (set) public var categoryName : String
  
  init(_ imageName : String, _ categoryName:String) {
    self.imageName = imageName
    self.categoryName = categoryName
  }
}
