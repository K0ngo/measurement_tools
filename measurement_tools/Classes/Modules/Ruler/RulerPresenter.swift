//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
// 
//  RulerPresenter.swift
//
//  Created by alexander_bakuta
//  Copyright © 2018 k0ngo. All rights reserved.
//

import Foundation

protocol RulerView: class {
  
}

protocol RulerPresenter {

  func viewDidLoad()

}

protocol RulerRouter {
  
}

class RulerPresenterImplementation {

  private weak var view: RulerView?
  
  private let router: RulerRouter
  
  //MARK: -
  
  init(for view: RulerView, with router: RulerRouter) {

    self.view = view
    self.router = router

  }

}

//MARK: - RulerPresenter

extension RulerPresenterImplementation: RulerPresenter {

  func viewDidLoad() {
    
  }

}



