//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
// 
//  SpeedViewController.swift
//
//  Created by alexander_bakuta
//  Copyright © 2018 k0ngo. All rights reserved.
//

import UIKit

class SpeedViewController: BaseViewController {
  
  var presenter: SpeedPresenter?
  
  @IBOutlet weak var lblSpeed: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    SpeedConfiguratorImplementation.configure(for: self)
    presenter?.viewDidLoad()
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    presenter?.viewWillDisappear()
  }
}

//MARK: - SpeedView

extension SpeedViewController: SpeedView {
  
  func showSpeed(_ speed: String) {
    lblSpeed.text = speed
  }
}
