//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
// 
//  SpeedViewController.swift
//
//  Created by alexander_bakuta
//  Copyright © alexander_bakuta. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {
  
  var presenter: SpeedPresenter?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    SpeedConfiguratorImplementation.configure(for: self)
    presenter?.viewDidLoad()
  }

}

//MARK: - SpeedView

extension SpeedViewController: SpeedView {
  
}




















