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
  
  private let categories = [Category("digital","Digital",ProductEnum.digital),
                            Category( "hats","Hats",ProductEnum.hats),
                            Category("shirts","Shirts",ProductEnum.shirts),
                            Category("hoodies","Hoodies",ProductEnum.hoodies)]
  private let hatProducts = [Product("HAT01".capitalized,"$12","hat01"),
                             Product("HAT02".capitalized,"$22","hat02"),
                             Product("HAT03".capitalized,"$13","hat02"),
                             Product("HAT04".capitalized,"$14","hat04")]
  
  private let shirtProducts = [Product("Shirts01".capitalized,"$12","shirt01"),Product("Shirts02".capitalized,"$13","shirt02"),Product("Shirts03".capitalized,"$32","shirt03"),Product("Shirts04".capitalized,"$14","shirt04")]
  
  private let digitalProducts = [Product]()
  
  private let hoodiesProducts = [Product("Hoodie01".capitalized,"$12","hoodie01"),
                                 Product("Hoodie02".capitalized,"$22","hoodie02"),
                                 Product("Hoodie03".capitalized,"$32","hoodie03"),
                                 Product("Hoodie04".capitalized,"$42","hoodie04")]
  
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
  
  public func getProductsFromCategories(category : Category) -> [Product]{
    switch category.productEnum {
    case .digital:
      return getDigital()
    case .hats :
     return getHats()
    case .shirts :
      return getShirts()
    case .hoodies :
      return getHoodies()
    default:
      return getDigital()
    }
  }
  
}
