//
//  BGAppCoordinator.swift
//  Backgrounder
//
//  Created by David Baker on 3/2/16.
//  Copyright © 2016 Worth Baker. All rights reserved.
//

import UIKit

protocol Coordinator {
  func start()
}

class AppCoordinator: NSObject, Coordinator {
  
  let navigationController: UINavigationController
  var childCoordinators = [Coordinator]()
  
  init(withNavigationController navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let mainCoordinator = MainViewCoordinator(withNavigationController: self.navigationController)
    self.childCoordinators.append(mainCoordinator)
    mainCoordinator.start()
  }
  
}