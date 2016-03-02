//
//  MainViewController.swift
//  Backgrounder
//
//  Created by David Baker on 3/2/16.
//  Copyright © 2016 Worth Baker. All rights reserved.
//

import UIKit

protocol MainViewControllerDelegate: class {
  
}

class MainViewController: UIViewController {
  
  weak var delegate: MainViewControllerDelegate?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.navigationItem.title = "ChatLog"
    
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = .whiteColor()
    
    // add the top calendar view
    let testView = CalendarView(frame: CGRectZero)
    self.view.addSubview(testView)
    
    let dayHeight = floor(self.view.frame.width / 7.0)
    
    testView.translatesAutoresizingMaskIntoConstraints = false
    testView.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor).active = true
    testView.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor).active = true
    testView.heightAnchor.constraintEqualToConstant(dayHeight).active = true
    testView.topAnchor.constraintEqualToAnchor(self.topLayoutGuide.bottomAnchor).active = true
    
    //
  }
  
}
