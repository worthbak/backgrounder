//
//  CalendarView.swift
//  Backgrounder
//
//  Created by David Baker on 3/2/16.
//  Copyright © 2016 Worth Baker. All rights reserved.
//

import UIKit

class CalendarView: UIView {
  
  let stackView: UIStackView
  
  override init(frame: CGRect) {
    self.stackView = UIStackView(frame: frame)
    self.stackView.translatesAutoresizingMaskIntoConstraints = false
    self.stackView.distribution = UIStackViewDistribution.FillEqually
    self.stackView.spacing = 1.0
    
    super.init(frame: frame)
    
    self.addSubview(self.stackView)
    self.stackView.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor).active = true
    self.stackView.trailingAnchor.constraintEqualToAnchor(self.trailingAnchor).active = true
    self.stackView.topAnchor.constraintEqualToAnchor(self.topAnchor).active = true
    self.stackView.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor).active = true
    
    for x in 1...7 {
      let view = UIView()
      view.backgroundColor = .lightGrayColor()
      view.translatesAutoresizingMaskIntoConstraints = false
      
      let label = UILabel()
      label.text = "\(x)"
      view.addSubview(label)
      label.translatesAutoresizingMaskIntoConstraints = false
      label.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
      label.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
      
      self.stackView.addArrangedSubview(view)
    }
  }

  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
}
