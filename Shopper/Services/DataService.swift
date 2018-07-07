//
//  DataService.swift
//  Shopper
//
//  Created by SHOBHIT SHARMA on 06/07/18.
//  Copyright © 2018 SHOBHIT SHARMA. All rights reserved.
//

import Foundation

class DataService {
  
  public static let instance = DataService()
  
  private let categories = [Category("digital","Digital"),
                            Category( "hats","Hats"),
                            Category("shirts","Shirts"),
                            Category("hoodies","Hoodies")]
  private let hatProducts = [Product("HAT01","$12","hat01"),
                             Product("HAT02","$22","hat02"),
                             Product("HAT03","$13","hat02"),
                             Product("HAT04","$14","hat04")]
  
  private let shirtProducts = [Product("Shirts01","$12","shirt01"),Product("Shirts02","$13","shirt02"),Product("Shirts03","$32","shirt03"),Product("Shirts04","$14","shirt04")]
  
  private let digitalProducts = [Product]()
  
  private let hoodiesProducts = [Product("Hoodie01","$12","hoodie01"),
                                 Product("Hoodie02","$22","hoodie02"),
                                 Product("Hoodie03","$32","hoodie03"),
                                 Product("Hoodie04","$42","hoodie04")]
  
  public func getCategories() -> [Category]{
    return categories
  }
  
  public func getHats() -> [Product]{
    return hatProducts
  }
  
  public func getShirts() -> [Product]{
    return shirtProducts
  }
  
  public func getHoodies() -> [Product]{
    return hoodiesProducts
  }
  
  public func getDigital() -> [Product]{
    return digitalProducts
  }
  
}
