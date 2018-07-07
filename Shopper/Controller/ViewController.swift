//
//  ViewController.swift
//  Shopper
//
//  Created by SHOBHIT SHARMA on 05/07/18.
//  Copyright © 2018 SHOBHIT SHARMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var categoryTableView : UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    categoryTableView.delegate = self
    categoryTableView.dataSource = self
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  
}

//Mark:tableview delegate and datasource
extension ViewController: UITableViewDelegate, UITableViewDataSource  {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return DataService.instance.getCategories().count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let categoryTableViewCell = tableView.dequeueReusableCell(withIdentifier: "categoryCell",for: indexPath) as? CategoryTableViewCell {
      
      categoryTableViewCell.setUpDataForViews(category: DataService.instance.getCategories()[indexPath.row])
      return categoryTableViewCell
      
    }
    return CategoryTableViewCell()
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
  }
}
