//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
// 
//  SpeedPresenter.swift
//
//  Created by alexander_bakuta
//  Copyright © alexander_bakuta. All rights reserved.
//

import Foundation

protocol SpeedView: class {
  
}

protocol SpeedPresenter {

  func viewDidLoad()

}

protocol SpeedRouter {
  
}

class SpeedPresenterImplementation {

  private weak var view: SpeedView?
  
  private let router: SpeedRouter
  
  //MARK: -
  
  init(for view: SpeedView, with router: SpeedRouter) {

    self.view = view
    self.router = router

  }

}

//MARK: - SpeedPresenter

extension SpeedPresenterImplementation: SpeedPresenter {

  func viewDidLoad() {
    
  }

}



