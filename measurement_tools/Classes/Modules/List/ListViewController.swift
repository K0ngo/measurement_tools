//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
// 
//  ListViewController.swift
//
//  Created by alexander_bakuta
//  Copyright © 2018 k0ngo. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
  
  var presenter: ListPresenter?
    
  override func viewDidLoad() {
    super.viewDidLoad()
    ListConfiguratorImplementation.configure(for: self)
    presenter?.viewDidLoad()
  }

}

extension ListViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }
}

extension ListViewController: UITableViewDelegate {

  
}

//MARK: - ListView

extension ListViewController: ListView {
  
}
