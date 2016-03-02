//
//  MainViewCoordinator.swift
//  Backgrounder
//
//  Created by David Baker on 3/2/16.
//  Copyright © 2016 Worth Baker. All rights reserved.
//

import UIKit

protocol MainViewCoordinatorDelegate: class {}

class MainViewCoordinator: NSObject, Coordinator {
  
  weak var delegate: MainViewCoordinatorDelegate?
  let navigationController: UINavigationController
  
  init(withNavigationController navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let viewCon = MainViewController()
    viewCon.delegate = self
    self.navigationController.pushViewController(viewCon, animated: false)
  }
}

extension MainViewCoordinator: MainViewControllerDelegate {
  
}
