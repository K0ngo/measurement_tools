//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
// 
//  RulerViewController.swift
//
//  Created by alexander_bakuta
//  Copyright © 2018 k0ngo. All rights reserved.
//

import UIKit

class RulerViewController: UIViewController {
  
  var presenter: RulerPresenter?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    RulerConfiguratorImplementation.configure(for: self)
    presenter?.viewDidLoad()
  }

}

//MARK: - RulerView

extension RulerViewController: RulerView {
  
}




















