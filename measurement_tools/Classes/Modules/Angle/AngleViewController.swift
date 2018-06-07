//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
// 
//  AngleViewController.swift
//
//  Created by alexander_bakuta
//  Copyright © alexander_bakuta. All rights reserved.
//

import UIKit

class AngleViewController: BaseViewController {
  
  var presenter: AnglePresenter?

  @IBOutlet weak var lblAngle: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    AngleConfiguratorImplementation.configure(for: self)
    presenter?.viewDidLoad()
  }
}

//MARK: - AngleView

extension AngleViewController: AngleView {
  
  func showAngle(_ angle: String) {
    lblAngle.text = angle + "°"
  }
  
}
