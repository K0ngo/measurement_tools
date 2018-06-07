//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
//
//  RulerConfigurator.swift
//
//  Created by alexander_bakuta
//  Copyright © alexander_bakuta. All rights reserved.
//

import Foundation

protocol RulerConfigurator {

  static func configure(for view: RulerViewController)

}

class RulerConfiguratorImplementation {
  
}

extension RulerConfiguratorImplementation: RulerConfigurator {

  static func configure(for view: RulerViewController) {

    let router = RulerRouterImplementation(for: view)
    
    let presenter = RulerPresenterImplementation(for: view, with: router)
    view.presenter = presenter

  }

}







