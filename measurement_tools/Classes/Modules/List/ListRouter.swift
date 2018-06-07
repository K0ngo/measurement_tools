//
//  ⚡️Created by Generatus⚡️ on 07.06.2018
// 
//  ListRouter.swift
//
//  Created by alexander_bakuta
//  Copyright © 2018 k0ngo. All rights reserved.
//

import UIKit

class ListRouterImplementation {

  private weak var view: ListViewController?
  
  init(for view: ListViewController) {
    self.view = view
  }

}

//MARK: - ListRouter

extension ListRouterImplementation: ListRouter {
  
}
