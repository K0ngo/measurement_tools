//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
// 
//  AnglePresenter.swift
//
//  Created by alexander_bakuta
//  Copyright © 2018 k0ngo. All rights reserved.
//

import Foundation
import CoreMotion

protocol AngleView: class {
  func showAngle(_ angle: String)
}

protocol AnglePresenter {

  func viewDidLoad()

}

protocol AngleRouter {
  
}

class AnglePresenterImplementation {

  private weak var view: AngleView?
  private let router: AngleRouter

  let motionManager: CMMotionManager = {
    let motionManager = CMMotionManager()
    motionManager.deviceMotionUpdateInterval = 0.1
    return motionManager
  }()
  
  //MARK: -
  
  init(for view: AngleView, with router: AngleRouter) {

    self.view = view
    self.router = router
    
  }

}

//MARK: - AnglePresenter

extension AnglePresenterImplementation: AnglePresenter {

  func viewDidLoad() {
    motionManager.startDeviceMotionUpdates(to: .main) { deviceMotion, error in
      if let deviceMotion = deviceMotion {
        self.view?.showAngle(String(format: "%.2f", abs(deviceMotion.gravity.x*90)))
      }
    }
  }
}



