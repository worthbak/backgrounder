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

class BGAppCoordinator: NSObject, Coordinator {
  
  let navigationController: UINavigationController
  var childCoordinators = [Coordinator]()
  
  init(withNavigationController navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let testVC = UIViewController()
    testVC.navigationItem.title = "Hello World"
    testVC.view.backgroundColor = .blueColor()
    
    self.navigationController.pushViewController(testVC, animated: false)
  }
  
}