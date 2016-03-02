//
//  MainViewController.swift
//  Backgrounder
//
//  Created by David Baker on 3/2/16.
//  Copyright © 2016 Worth Baker. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = .whiteColor()
    
    let testView = UIView()
    testView.backgroundColor = .greenColor()
    self.view.addSubview(testView)
    
    testView.translatesAutoresizingMaskIntoConstraints = false
    testView.widthAnchor.constraintEqualToConstant(100).active = true
    testView.heightAnchor.constraintEqualToConstant(100).active = true
    testView.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor).active = true
    testView.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor).active = true
  }
  
}
