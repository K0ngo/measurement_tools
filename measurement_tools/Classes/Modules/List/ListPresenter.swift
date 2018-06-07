//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
// 
//  ListPresenter.swift
//
//  Created by alexander_bakuta
//  Copyright © 2018 k0ngo. All rights reserved.
//

import Foundation

protocol ListView: class {
  
}

protocol ListPresenter {

  func viewDidLoad()

  var numberOfRows: Int { get }
  func model(at index: Int) -> String
  
}

protocol ListRouter {
  
}

class ListPresenterImplementation {

  private weak var view: ListView?
  private let router: ListRouter
  
  //MARK: -
  
  init(for view: ListView, with router: ListRouter) {

    self.view = view
    self.router = router

  }

}

//MARK: - ListPresenter

extension ListPresenterImplementation: ListPresenter {

  func viewDidLoad() {
    
  }

}



