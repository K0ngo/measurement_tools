//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
//
//  SpeedConfigurator.swift
//
//  Created by alexander_bakuta
//  Copyright © alexander_bakuta. All rights reserved.
//

import Foundation

protocol SpeedConfigurator {

  static func configure(for view: SpeedViewController)

}

class SpeedConfiguratorImplementation {
  
}

extension SpeedConfiguratorImplementation: SpeedConfigurator {

  static func configure(for view: SpeedViewController) {

    let router = SpeedRouterImplementation(for: view)
    
    let presenter = SpeedPresenterImplementation(for: view, with: router)
    view.presenter = presenter

  }

}







