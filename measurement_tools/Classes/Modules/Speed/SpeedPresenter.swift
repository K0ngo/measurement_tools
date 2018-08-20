//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
// 
//  SpeedPresenter.swift
//
//  Created by alexander_bakuta
//  Copyright © 2018 k0ngo. All rights reserved.
//

import Foundation
import CoreLocation

protocol SpeedView: class {
  func showSpeed(_ speed: String)
}

protocol SpeedPresenter {

  func viewDidLoad()
  func viewWillDisappear()
}

protocol SpeedRouter {
  
}

class SpeedPresenterImplementation: NSObject {

  private weak var view: SpeedView?
  private let router: SpeedRouter
  
  let locationManager = CLLocationManager()
  
  //MARK: -
  
  init(for view: SpeedView, with router: SpeedRouter) {

    self.view = view
    self.router = router

  }

}

//MARK: - SpeedPresenter

extension SpeedPresenterImplementation: SpeedPresenter {

  func viewDidLoad() {
    
    locationManager.requestWhenInUseAuthorization()
    locationManager.delegate = self
    locationManager.desiredAccuracy = kCLLocationAccuracyBest
    locationManager.pausesLocationUpdatesAutomatically = true
    locationManager.startUpdatingLocation()
  }

  func viewWillDisappear() {
    locationManager.stopUpdatingLocation()
  }
}

extension SpeedPresenterImplementation: CLLocationManagerDelegate {

  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    print("location")
    view?.showSpeed(String(format: "%f", manager.location?.speed ?? "N/A"))
  }
  
  func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    print("Error: \(error.localizedDescription)")
  }
}


