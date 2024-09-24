//
//  SettingsViewController.swift
//  MixedApp
//
//  Created by Riccardo Cipolleschi on 24/09/2024.
//

import Foundation
import React
import React_RCTAppDelegate

class SettingsViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view = (RCTSharedApplication()?.delegate as? RCTAppDelegate)?.rootViewFactory .view(withModuleName: "Settings", initialProperties: [:])
    
  }
}
