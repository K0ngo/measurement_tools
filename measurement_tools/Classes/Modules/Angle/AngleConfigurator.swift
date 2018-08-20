//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
//
//  AngleConfigurator.swift
//
//  Created by alexander_bakuta
//  Copyright © 2018 k0ngo. All rights reserved.
//

import Foundation

protocol AngleConfigurator {

  static func configure(for view: AngleViewController)

}

class AngleConfiguratorImplementation {
  
}

extension AngleConfiguratorImplementation: AngleConfigurator {

  static func configure(for view: AngleViewController) {

    let router = AngleRouterImplementation(for: view)
    
    let presenter = AnglePresenterImplementation(for: view, with: router)
    view.presenter = presenter

  }

}







