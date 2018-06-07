//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
//
//  ListConfigurator.swift
//
//  Created by alexander_bakuta
//  Copyright © 2018 k0ngo. All rights reserved.
//

import Foundation

protocol ListConfigurator {

  static func configure(for view: ListViewController)

}

class ListConfiguratorImplementation {
  
}

extension ListConfiguratorImplementation: ListConfigurator {

  static func configure(for view: ListViewController) {

    let router = ListRouterImplementation(for: view)
    
    let presenter = ListPresenterImplementation(for: view, with: router)
    view.presenter = presenter

  }

}







