//
//  BaseViewController.swift
//  measurement_tools
//
//  Created by Alexander Bakuta on 07.06.2018.
//  Copyright © 2018 k0ngo. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  deinit {
    print("[deinit]", classForCoder)
  }
  
}
